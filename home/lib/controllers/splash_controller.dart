import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:core/core_library.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:locator/locator_library.dart';
import 'package:router/router_library.dart';

class SplashController extends GetxController {
  final GetStorage _box = locator<GetStorage>();

  // Private variables
  RxBool _isLoaded = RxBool(false);

  // Public variables
  bool get isLoaded => _isLoaded.value;

  @override
  void onInit() {

    _initApp();
    _load();
    super.onInit();
  }

  _load() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) => _isLoaded.value = true);
    Get.toNamed(MyRoutes.WELCOME_PAGE);
  }

  Future<void> _initApp() async {
    
  }
}
