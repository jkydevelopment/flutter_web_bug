import 'package:core/core_library.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MenuLeftWidget extends StatelessWidget {
  final List<AppMenu> menus;

  const MenuLeftWidget({
    Key? key,
    required this.menus
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      height: Get.height,
      child: Column(
        children: _getMenuButtons(),
      ),
    );
  }

  List<Widget> _getMenuButtons() {
    List<Widget> widgets = [];
    for (final menu in menus) {
      widgets.add(MenuButtonWidget(appMenu: menu));
    }
    return widgets;
  }
}
