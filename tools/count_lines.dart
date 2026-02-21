import 'dart:io';

/// Counts lines of code (excluding comments and blank lines) in Dart files.
void main(List<String> args) {
  final directory = Directory(args.isEmpty ? '.' : args.first);

  if (!directory.existsSync()) {
    stderr.writeln('Directory not found: ${directory.path}');
    exit(1);
  }

  var totalLines = 0;
  var totalCodeLines = 0;
  var fileCount = 0;

  final files = directory
      .listSync(recursive: true)
      .whereType<File>()
      .where((f) => f.path.endsWith('.dart'));

  for (final file in files) {
    final lines = file.readAsLinesSync();
    final codeLines = _countCodeLines(lines);
    totalLines += lines.length;
    totalCodeLines += codeLines;
    fileCount++;
  }

  print('Files:      $fileCount');
  print('Total lines: $totalLines');
  print('Code lines:  $totalCodeLines');
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
