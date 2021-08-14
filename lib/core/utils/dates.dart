class Dates {
  static String dateStringWithoutTime(DateTime date) {
    String day = date.day.toString();

    String month = date.month.toString();

    if (day.length < 2) {
      day = "0$day";
    }
    if (month.length < 2) {
      month = "0$month";
    }

    return "$day/$month/${date.year}";
  }

  static String dateStringWithoutTimeAndDay(DateTime date) {
    String day = date.day.toString();

    String month = date.month.toString();

    if (day.length < 2) {
      day = "0$day";
    }
    if (month.length < 2) {
      month = "0$month";
    }

    return "$month/${date.year}";
  }
}
