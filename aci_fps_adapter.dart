class AciFpsAdapter {
  static const double mmPerInch = 25.4;
  static const double mpaPerPsi = 0.006894757293168361;
  static const double psiPerMpa = 145.03773773020923;
  static const double lbPerNewton = 0.22480894387096;
  static const double lbPerKilonewton = 224.80894387096;
  static const double inchPerMeter = 39.37007874015748;
  static const double lbInPerKnM = 8850.7457673787;

  static double mmToIn(double value) => value / mmPerInch;
  static double inToMm(double value) => value * mmPerInch;

  static double mpaToPsi(double value) => value * psiPerMpa;
  static double psiToMpa(double value) => value * mpaPerPsi;

  static double knToLb(double value) => value * lbPerKilonewton;
  static double lbToKn(double value) => value / lbPerKilonewton;

  static double knMToLbIn(double value) => value * lbInPerKnM;
  static double lbInToKnM(double value) => value / lbInPerKnM;
}
