import 'package:intl/intl.dart';

extension DateTimeExtenstion on DateTime {
  String ddmmYYYY() {
    return DateFormat('d.M.yyyy').format(this);
  }

  String ddmm() {
    return DateFormat('d.M.').format(this);
  }
}
