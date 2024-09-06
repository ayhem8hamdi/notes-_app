import 'package:intl/intl.dart';

String dateSpecialFormat() {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat("d, MMMM yyyy").format(now);
  return formattedDate;
}
