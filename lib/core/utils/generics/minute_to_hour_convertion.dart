String minToHourConvertion(int value) {
  final int hour = value ~/ 60;
  final int minutes = value % 60;
  return '${hour.toString().padLeft(2, "0")}h  ${minutes.toString().padLeft(2, "0")}m';
}
