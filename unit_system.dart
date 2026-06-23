enum DesignUnitSystem {
  /// US customary units used internally for ACI modules.
  fps,

  /// Metric units used for Indian Code modules and user input forms.
  mks,
}

class UnitValue {
  final double value;
  final String unit;

  const UnitValue(this.value, this.unit);

  @override
  String toString() => '${value.toStringAsFixed(4)} $unit';
}
