
import 'package:flutter/material.dart';

class AppMenu {
  String title;
  Function onPressed;
  IconData? iconData;
  Widget? iconWidget;
  Color? iconColor;
  Color? textColor;
  Color? backgroundColor;
  bool showBorder;
  bool showBadge;
  int badgeValue;

  AppMenu({
    required this.title,
    required this.onPressed,
    this.iconData,
    this.iconWidget,
    this.iconColor,
    this.textColor,
    this.backgroundColor,
    this.showBorder = true,
    this.showBadge = false,
    this.badgeValue = 0,
  });
}
