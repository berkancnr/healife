// ignore_for_file: unused_element

class AssetConstants {
  static AssetConstants? _instace;
  static AssetConstants get instance {
    _instace ??= AssetConstants._init();
    return _instace!;
  }

  AssetConstants._init();

  final lottieAssets = _Lottie();
  final svgAssets = _SVG();
  final icons = _Icons();
  final videos = _Videos();
}

class _Icons {
  final String eyeOpened = 'icons/eye_opened'.toPNG;
  final String eyeClosed = 'icons/eye_closed'.toPNG;
}

class _Videos {}

class _Lottie {}

class _SVG {}

extension _ImageConstantsExtension on String {
  String get toPNG => 'assets/$this.png';
  String get toJPEG => 'assets/$this.jpeg';
  String get toJSON => 'assets/$this.json';
  String get toSVG => 'assets/$this.svg';
  String get toMp4 => 'assets/$this.mp4';
}
