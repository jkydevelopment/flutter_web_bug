
import 'package:flutter/material.dart';

class InkWellColor extends StatelessWidget {

  final Function() onClick;
  final Function()? onLongClick;
  final Widget child;
  final Color? color;
  final Color? borderColor;
  final double borderRadius;

  const InkWellColor({
    Key? key,
    required this.onClick,
    required this.onLongClick,
    required this.child,
    required this.color,
    this.borderColor,
    this.borderRadius = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BoxBorder? boxBorder = (borderColor != null) ? Border.all(color: borderColor!) : null;
    return Material(
      type: MaterialType.transparency,
      borderRadius: BorderRadius.circular(borderRadius),
      child: Ink(
        decoration: BoxDecoration(
          color: color ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
          border: boxBorder
        ),
        child: InkWell(
          onTap: onClick,
          onLongPress: onLongClick,
          borderRadius: BorderRadius.circular(borderRadius),
          child: child,
        ),
      ),
    );
  }
}
