extension DoubleExt on double {
  String toLabel() {
    if (this == toInt()) {
      return toInt().toString();
    } else {
      return toStringAsFixed(2);
    }
  }
}
