class PhiFactor {
  /// Strength reduction factor for tied RC sections using tensile strain.
  /// fy and es must use the same stress unit. tensileStrain is positive.
  static double tied({
    required double tensileStrain,
    required double fy,
    required double es,
  }) {
    if (fy <= 0 || es <= 0) {
      throw ArgumentError('fy and es must be positive.');
    }

    final ey = fy / es;

    if (tensileStrain <= ey) return 0.65;
    if (tensileStrain >= ey + 0.003) return 0.90;

    return 0.65 + ((tensileStrain - ey) / 0.003) * 0.25;
  }
}
