import 'package:flutter/material.dart';

enum CustomWrapSpacing { none, low, mid, high }

class CustomWrap extends StatelessWidget {
  final List<Widget> children;
  final Axis direction;
  final WrapCrossAlignment? wrapCrossAlignment;
  final WrapAlignment? alignment;
  final CustomWrapSpacing spacing;

  const CustomWrap(
      {super.key,
      required this.children,
      this.direction = Axis.horizontal,
      this.spacing = CustomWrapSpacing.mid,
      this.wrapCrossAlignment,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: direction,
      spacing: _getSpacing,
      runSpacing: _getSpacing,
      alignment: alignment ?? WrapAlignment.center,
      crossAxisAlignment: wrapCrossAlignment ?? WrapCrossAlignment.center,
      children: children,
    );
  }

  double get _getSpacing {
    switch (spacing) {
      case CustomWrapSpacing.none:
        return 0.0;
      case CustomWrapSpacing.low:
        return 4.0;
      case CustomWrapSpacing.mid:
        return 8.0;
      case CustomWrapSpacing.high:
        return 12.0;
    }
  }
}
