import 'package:core/core_library.dart';
import 'package:flutter/material.dart';

class MenuButtonWidget extends StatelessWidget {
  final AppMenu appMenu;

  const MenuButtonWidget({
    Key? key, 
    required this.appMenu
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        primary: appMenu.iconColor,
        backgroundColor: appMenu.backgroundColor,
      ),
      onPressed: () => appMenu.onPressed(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Text(
            appMenu.title,
            style: TextStyle(
              color: appMenu.textColor,
              fontSize: 14.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      )
    );
  }
}
