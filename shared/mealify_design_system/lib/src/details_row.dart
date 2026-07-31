/// A single row in the list tab of a `DetailsView`.
///
/// The `label` renders as the row's title and the optional `value` as its
/// trailing text. Callers map their own domain types into this shape, which is
/// what keeps the design system free of any feature's vocabulary.
typedef DetailsRow = ({String label, String? value});
