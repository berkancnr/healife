import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:timeago/timeago.dart' as timeago;

abstract class DateConstants {
  String getTimeAgoMessage({required BuildContext context, required DateTime date}) {
    return timeago.format(date, locale: context.locale.languageCode);
  }
}
