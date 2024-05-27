import 'package:flutter/material.dart';

import '../../../../core/constants/layout_constants.dart';

enum WidgetPaddingType { low, mid, high, max }

class DefaultWidgetPadding extends StatelessWidget {
  final Widget child;
  final WidgetPaddingType paddingType;
  const DefaultWidgetPadding({super.key, required this.child, this.paddingType = WidgetPaddingType.mid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _getPadding,
      child: child,
    );
  }

  EdgeInsetsGeometry get _getPadding {
    switch (paddingType) {
      case WidgetPaddingType.low:
        return LayoutConstants.defaultHorizontalPadding;

      case WidgetPaddingType.mid:
        return LayoutConstants.midHorizontalPadding;

      case WidgetPaddingType.high:
        return LayoutConstants.highHorizontalPadding;

      case WidgetPaddingType.max:
        return LayoutConstants.largeHorizontalPadding;
    }
  }
}
