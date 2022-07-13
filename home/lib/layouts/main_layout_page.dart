
import 'package:core/core_library.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/home_library.dart';

class MainLayoutPage extends StatelessWidget {

  final Widget child;
  final MainLayoutController controller;

  static const LEFT_MENU_HEIGHT = 250.0;
  static const TOP_MENU_HEIGHT = 50.0;

  const MainLayoutPage({
    Key? key,
    required this.controller,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.create(() => MainLayoutController());

    // return Obx(() {
      return _getBody(context);
    // });
  }

  Widget _getBody(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          children: [
            Container(
              width: LEFT_MENU_HEIGHT,
              height: Get.height,
              color: MyColors.appsPink,
              child: MenuLeftWidget(
                menus: controller.getMenuLeftItems()
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    height: TOP_MENU_HEIGHT,
                    color: MyColors.appsBlue,
                    child: MenuTopWidget(
                      menus: controller.getMenuTopItems(),
                    ),
                  ),
                  Expanded(child: child)
                  // Container(
                  //   // width: Get.width * 0.2,
                  //   height: Get.height - TOP_MENU_HEIGHT,
                  //   child: child
                  // ),
                ],
              )
            )
          ]
        )
      )
    );
  }
}
