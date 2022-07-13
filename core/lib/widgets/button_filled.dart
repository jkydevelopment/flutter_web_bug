
import 'package:core/core_library.dart';
import 'package:flutter/material.dart';

class ButtonFilled extends StatelessWidget {

  static const HEIGHT = 36.0;
  static const COLOR = MyColors.green3;
  static const PRESSED_COLOR = MyColors.green3Pressed;
  static const DISABLED_COLOR = MyColors.green3Disabled;
  static const TEXT_COLOR = MyColors.white;

  final Function()? onClick;
  final String text;
  final double width;
  final double height;
  final bool alert;
  final bool isEnabled;
  final Widget? leading;
  final Widget? trailing;
  final double borderRadius;
  final TextStyle? textStyle;
  final Color color;
  final Color pressedColor;
  final Color disabledColor;
  final Color textColor;
  final double elevation;

  ButtonFilled({
    required this.onClick, 
    required this.text, 
    required this.width, 
    this.height = HEIGHT, 
    this.alert = false, 
    this.isEnabled = true, 
    this.leading,
    this.trailing,
    this.borderRadius = 6.0,
    this.textStyle,
    this.color = COLOR,
    this.pressedColor = PRESSED_COLOR,
    this.disabledColor = DISABLED_COLOR,
    this.textColor = TEXT_COLOR,
    this.elevation = 0.0
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onClick,
        child: _getChild(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return isEnabled ? pressedColor : disabledColor;
            }
            return isEnabled ? color : disabledColor;
          }),
          elevation: MaterialStateProperty.all(elevation),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            )
          ),
        ),
      ),
    );
  }

  Widget _getChild() {
    final textWidget = FittedBox(
      fit: BoxFit.fitWidth,
      child: Text(
        text,
        style: textStyle ?? TextStyle(
          color: textColor,
          fontSize: 18.0,
          fontWeight: FontWeight.w600
        ),
      ),
    );
    if (leading == null && trailing == null) {
      return textWidget;
    } else if (leading != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          leading!,
          SizedBox(width: 12.0),
          textWidget
        ]
      );
    } else if (trailing != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          textWidget,
          SizedBox(width: 12.0),
          trailing!,
        ]
      );
    }
    return Container();
  }
}