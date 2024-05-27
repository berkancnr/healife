import 'package:flutter/material.dart';

import '../../../../core/constants/layout_constants.dart';

class CustomRectangleButton extends StatelessWidget {
  final Color? color;
  final Color? borderColor;
  final bool isProcess;
  final bool paddingEnable;
  final IconData? icon;
  final String text;
  final Color textColor;
  final Color? iconColor;
  final double borderWidth;
  final Function()? onTap;
  final Function()? onLongPress;
  const CustomRectangleButton(
      {super.key,
      this.color,
      this.isProcess = false,
      this.icon,
      required this.text,
      this.textColor = Colors.white,
      this.onTap,
      this.onLongPress,
      this.iconColor,
      this.borderColor,
      this.borderWidth = 2.0,
      this.paddingEnable = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: paddingEnable ? LayoutConstants.buttonPadding : EdgeInsets.zero,
      child: InkWell(
        onTap: isProcess ? null : onTap,
        onLongPress: onLongPress,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: _getBorderColor(context), width: borderWidth),
              color: !isProcess ? _getButtonColor(context) : Colors.transparent),
          child: Center(
            child: Padding(
              padding: LayoutConstants.centralAllPadding,
              child: isProcess
                  ? const CircularProgressIndicator.adaptive()
                  : Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        icon != null
                            ? Icon(
                                icon,
                                color: iconColor ?? Theme.of(context).textTheme.bodyMedium!.color!,
                                size: 24,
                              )
                            : const SizedBox(),
                        Expanded(
                          child: Text(
                            text,
                            textAlign: TextAlign.center,
                            style: TextStyle(color: _getTextColor(context), fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }

  Color _getTextColor(BuildContext context) {
    return onTap != null ? textColor : _getDisableColor(context);
  }

  Color _getButtonColor(BuildContext context) {
    return onTap != null ? (color ?? Theme.of(context).primaryColor) : Colors.transparent;
  }

  Color _getBorderColor(BuildContext context) {
    return onTap != null && !isProcess
        ? borderColor ?? (color ?? Theme.of(context).primaryColor)
        : _getDisableColor(context);
  }

  Color _getDisableColor(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.color!.withOpacity(0.4);
  }
}
