typedef ResidualFunction = double Function(double x);

class NewtonRaphson {
  static double solve({
    required ResidualFunction residual,
    required double initialGuess,
    double tolerance = 1e-8,
    int maxIterations = 100,
    double derivativeStep = 1e-5,
    double minValue = 1e-6,
    double maxValue = 1e9,
  }) {
    var x = initialGuess.clamp(minValue, maxValue).toDouble();

    for (var i = 0; i < maxIterations; i++) {
      final f = residual(x);
      if (f.abs() <= tolerance) return x;

      final df = (residual(x + derivativeStep) - f) / derivativeStep;
      if (df.abs() < 1e-12) break;

      final next = (x - f / df).clamp(minValue, maxValue).toDouble();
      if ((next - x).abs() <= tolerance) return next;
      x = next;
    }
    return x;
  }
}
