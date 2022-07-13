
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCircularLoaderTranslucent extends StatelessWidget {

  final bool showLoader;
  MyCircularLoaderTranslucent(this.showLoader);

  @override
  Widget build(BuildContext context) {
    if (!showLoader) {
      return Container();
    }
    return GestureDetector(
      child: Container(
        width: Get.width,
        height: Get.height,
        decoration: BoxDecoration(
            color: Colors.black26
        ),
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      onTap: () {
        print('Gesture tap');
      },
    );
  }
}