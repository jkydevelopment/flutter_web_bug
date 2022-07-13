import 'package:home/home_library.dart';
import 'package:get/get.dart';

class UnknownBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UnknownController>(
      () => UnknownController()
    );
  }
}