
import 'package:core/core_library.dart';
import 'package:flutter/material.dart';

class ButtonOutline extends StatelessWidget {

  final Function() onClick;
  final String text;
  final double width;
  final double height;
  final bool alert;
  final bool isEnabled;
  final Widget? leading;
  final Widget? trailing;
  final Color colorEnabled;
  final Color colorDisabled;
  final Color colorPressed;
  final double borderRadius;
  final TextStyle? textStyle;
  final FontWeight fontWeight;

  ButtonOutline({
    required this.onClick, 
    required this.text, 
    required this.width, 
    this.height = 36, 
    this.alert = false, 
    this.isEnabled = true, 
    this.leading, 
    this.trailing, 
    this.colorEnabled = MyColors.green2, 
    this.colorDisabled = MyColors.green2Disabled,
    this.colorPressed = MyColors.buttonBackgroundPressed,
    this.borderRadius = 6.0,
    this.textStyle,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onClick,
        child: _getChild(),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.pressed)) {
              return colorPressed;
            }
            return Colors.transparent;
          }),
          elevation: MaterialStateProperty.all(0),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
              side: BorderSide(color: alert ? MyColors.outOfStock : 
                (isEnabled ? colorEnabled : colorDisabled)
              ),
            )
          )
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
          color: alert ? MyColors.outOfStock : 
            (isEnabled ? colorEnabled : colorDisabled),
          fontSize: 18.0,
          fontWeight: fontWeight
        ),
        textAlign: TextAlign.center,
      )
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