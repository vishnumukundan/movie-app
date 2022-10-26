doubleToFactionalDigit(double vale, int digits) {
  final String stringValue = vale.toStringAsFixed(digits);
  final double finalValue = double.parse(stringValue);
  return finalValue;
}
