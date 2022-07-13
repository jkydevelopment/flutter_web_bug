
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:home/home_library.dart';

class SplashPage extends GetView<SplashController> {

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return _getBody(context);
    });
  }

  Widget _getBody(BuildContext context) {
    if (!controller.isLoaded) {
      return Text('Loading');
    }

    return Text('Loaded');
  }
}