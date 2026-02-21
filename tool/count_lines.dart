import 'dart:io';

/// Counts lines of code (excluding comments and blank lines).
///
/// Usage:
///   dart run tool/count_lines.dart [directories...] [--ext=.dart,.yaml,...]
///       [--exclude=build,.dart_tool,...]
void main(List<String> args) {
  final dirs = <String>[];
  var extensions = <String>{'.dart'};
  var excludedDirs = <String>{
    '.dart_tool',
    'build',
    '.fvm',
    'android',
    'ios',
    'macos',
    'linux',
    'windows',
    'web',
  };

  for (final arg in args) {
    if (arg.startsWith('--ext=')) {
      extensions = arg.substring('--ext='.length).split(',').map((e) {
        return e.startsWith('.') ? e : '.$e';
      }).toSet();
    } else if (arg.startsWith('--exclude=')) {
      excludedDirs = arg.substring('--exclude='.length).split(',').toSet();
    } else {
      dirs.add(arg);
    }
  }

  if (dirs.isEmpty) dirs.add('.');

  for (final dirPath in dirs) {
    if (!Directory(dirPath).existsSync()) {
      stderr.writeln('Directory not found: $dirPath');
      exit(1);
    }
  }

  var totalLines = 0;
  var totalCodeLines = 0;
  var fileCount = 0;
  final fileCounts = <String, int>{};

  for (final dirPath in dirs) {
    final files = Directory(dirPath)
        .listSync(recursive: true)
        .whereType<File>()
        .where((f) => extensions.any((ext) => f.path.endsWith(ext)))
        .where((f) => !f.path.split('/').any(excludedDirs.contains))
        .where((f) => !f.path.endsWith('.g.dart'));

    for (final file in files) {
      final lines = file.readAsLinesSync();
      final codeLines = _countCodeLines(lines);
      totalLines += lines.length;
      totalCodeLines += codeLines;
      fileCount++;
      fileCounts[file.path] = lines.length;
    }
  }

  print('Directories: ${dirs.join(', ')}');
  print('Extensions:  ${extensions.join(', ')}');
  print('Files:       $fileCount');
  print('Total lines: $totalLines');
  print('Code lines:  $totalCodeLines');

  final topN = 10;
  final sorted = fileCounts.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  print('\nTop $topN largest files:');
  for (final entry in sorted.take(topN)) {
    print('  ${entry.value.toString().padLeft(8)} ${entry.key}');
  }
}

int _countCodeLines(List<String> lines) {
  var count = 0;
  var inBlockComment = false;

  for (final line in lines) {
    final trimmed = line.trim();

    if (inBlockComment) {
      if (trimmed.contains('*/')) {
        inBlockComment = false;
      }
      continue;
    }

    if (trimmed.isEmpty) continue;
    if (trimmed.startsWith('//')) continue;
    if (trimmed.startsWith('#')) continue;

    if (trimmed.startsWith('/*')) {
      if (!trimmed.contains('*/')) {
        inBlockComment = true;
      }
      continue;
    }

    count++;
  }

  return count;
}
