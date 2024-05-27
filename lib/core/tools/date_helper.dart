abstract class DateHelper {
  static getOnlyDate(DateTime? date) {
    if (date != null) {
      return '${date.day}/${date.month}/${date.year}';
    } else {
      return '-';
    }
  }
}
