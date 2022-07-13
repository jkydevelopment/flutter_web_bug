import 'package:account_presentation/account_presentation_library.dart';
import 'package:get/get.dart';
import 'package:home/home_library.dart';

class MyRoutes {
  static const String SPLASH_PAGE = '/init';
  static const String UNKNOWN_PAGE = '/404';
  static const String WELCOME_PAGE = '/welcome';

  static const String SIGN_IN_PAGE = '/sign-in';
  static const String SIGN_UP_PAGE = '/sign-up';

}


String getInitialPage() {
  return MyRoutes.SPLASH_PAGE;
}

List<GetPage> getPages() {
  return [
    GetPage(
      name: MyRoutes.SPLASH_PAGE, 
      page: () => SplashPage(),
      binding: SplashBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: MyRoutes.UNKNOWN_PAGE, 
      page: () => UnknownPage(),
      binding: UnknownBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: MyRoutes.WELCOME_PAGE, 
      page: () => WelcomePage(),
      binding: WelcomeBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: MyRoutes.SIGN_IN_PAGE, 
      page: () => SignInPage(),
      binding: SignInBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 250),
    ),
  ];
}

GetPage getUnknownPage() => GetPage(
  name: MyRoutes.UNKNOWN_PAGE, 
  page: () => UnknownPage(),
  binding: UnknownBinding()
);
