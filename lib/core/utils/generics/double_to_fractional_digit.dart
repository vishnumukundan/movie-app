doubleToFactionalDigit(double value, int digits) {
  final String stringValue = value.toStringAsFixed(digits);
  final double finalValue = double.parse(stringValue);
  return finalValue;
}
