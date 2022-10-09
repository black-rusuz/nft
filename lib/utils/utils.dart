import 'package:intl/intl.dart';

class Utils {
  static String formatDate(DateTime dateTime) {
    final DateFormat formatter = DateFormat('dd MMMM yyyy, HH:MM');
    return formatter.format(dateTime);
  }
}