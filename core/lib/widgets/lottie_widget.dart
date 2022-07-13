
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LottieWidget extends StatelessWidget {

  final String asset;
  final double? width;
  final bool repeat;

  const LottieWidget({
    Key? key,
    required this.asset,
    this.width,
    required this.repeat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String path = 'assets/animations/$asset.json';
    return SizedBox(
      width: width ?? Get.width * 0.7,
      child: Lottie.asset(
        path,
        package: 'core',
        repeat: repeat,
      ),
    );
  }
}
