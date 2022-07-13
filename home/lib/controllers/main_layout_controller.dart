import 'package:core/core_library.dart';
import 'package:get/get.dart';
import 'package:home/home_library.dart';
import 'package:router/router_library.dart';

class MainLayoutController extends GetxController {

  @override
  void onInit() {

    super.onInit();
  }

  List<AppMenu> getMenuLeftItems() {
    final List<AppMenu> menus = [];

    menus.add(
        AppMenu(
          title: 'Sign in', 
          onPressed: () => Get.toNamed(MyRoutes.SIGN_IN_PAGE)
        )
      );
    return menus;
  }

  List<AppMenu> getMenuTopItems() {
    final List<AppMenu> menus = [];

    menus.add(AppMenu(title: 'Button 1', onPressed: () {}));
    menus.add(AppMenu(title: 'Button 2', onPressed: () {}));

    return menus;
  }

  goBack() => Get.back();
}
