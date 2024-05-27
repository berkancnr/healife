import 'package:easy_localization/easy_localization.dart';

import '../lang/locale_keys.g.dart';

enum ErrorTypes {
  unknown(localeKeys: LocaleKeys.error_unknown),;

  final String localeKeys;

  String message() {
    return localeKeys.tr();
  }

  const ErrorTypes({required this.localeKeys});
}

