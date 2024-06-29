import 'package:intl/intl.dart';

String formatTimeWithAmPm(DateTime dateTime) {
  // Create a DateFormat instance for hours and minutes with AM/PM
  DateFormat timeFormat = DateFormat('hh:mm a');
  // Format the given DateTime object
  return timeFormat.format(dateTime);
}
