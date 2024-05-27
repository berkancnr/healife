import 'package:flutter/material.dart';

import '../../../../core/constants/layout_constants.dart';

enum PagePaddingType { low, mid, high, max }

class DefaultPagePadding extends StatelessWidget {
  final Widget child;
  final PagePaddingType paddingType;
  const DefaultPagePadding({super.key, required this.child, this.paddingType = PagePaddingType.mid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _getPadding,
      child: child,
    );
  }

  EdgeInsetsGeometry get _getPadding {
    switch (paddingType) {
      case PagePaddingType.low:
        return LayoutConstants.defaultAllPadding;

      case PagePaddingType.mid:
        return LayoutConstants.midAllPadding;

      case PagePaddingType.high:
        return LayoutConstants.highAllPadding;

      case PagePaddingType.max:
        return LayoutConstants.largeAllPadding;
    }
  }
}
