import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'theme_manager.dart';

class ProductProvider {
  final List<SingleChildWidget> items = [
    ChangeNotifierProvider<ThemeManager>(
      create: (context) => ThemeManager(context),
    ),
  ];
}
