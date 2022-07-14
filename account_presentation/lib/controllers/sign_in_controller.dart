import 'dart:io' show Platform;

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:locator/locator_library.dart';

// Comment this line to verify the breakpoint starts working. Remove the comment and they will stop working.
import 'package:router/router.dart';

class SignInController extends GetxController {
  

  @override
  void onInit() {

    super.onInit();
  }

  stopOnBreakpoint() {
    // When package:router/router.dart' line is commented, the breakpoint works. Else, it does not work. 
    print('Add breakpoint here and check if works.');
  }
}