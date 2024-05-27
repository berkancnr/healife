enum AppFonts { poppins, notosans, mansory, raleway }

extension AppFontsExtension on AppFonts {
  String get name {
    switch (this) {
      case AppFonts.poppins:
        return 'Poppins';
      case AppFonts.notosans:
        return 'NotoSans';
      case AppFonts.mansory:
        return 'Mansory';
      case AppFonts.raleway:
        return 'Raleway';
    }
  }
}
