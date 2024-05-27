import 'dart:async';
import 'dart:ui';

class Debouncer {
  Timer? _timer;

  Debouncer();

  run(VoidCallback action, int milliseconds) {
    if (_timer != null) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
