class ClauseTrace {
  final String id;
  final String code;
  final String clause;
  final String title;
  final String equation;
  final String substitution;
  final String result;
  final bool? passed;

  const ClauseTrace({
    required this.id,
    required this.code,
    required this.clause,
    required this.title,
    required this.equation,
    required this.substitution,
    required this.result,
    this.passed,
  });
}
