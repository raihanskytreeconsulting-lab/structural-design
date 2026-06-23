class Beta1 {
  /// ACI rectangular stress block factor beta1.
  /// fc is in psi.
  static double calculate(double fcPsi) {
    if (fcPsi <= 0) {
      throw ArgumentError.value(fcPsi, 'fcPsi', 'Concrete strength must be positive.');
    }
    if (fcPsi <= 4000.0) return 0.85;
    final beta = 0.85 - 0.05 * ((fcPsi - 4000.0) / 1000.0);
    return beta.clamp(0.65, 0.85).toDouble();
  }
}
