import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:core/core_library.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:home/home_library.dart';
import 'package:locator/locator_library.dart';
import 'package:router/router_library.dart';
// import 'package:google_fonts/google_fonts.dart';

class ExampleApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // Do something on resume
    }
  }

  @override
  Widget build(BuildContext context) {
    Get.create(() => MainLayoutController(), tag: 'MainLayoutController');

    return GetMaterialApp(
      debugShowCheckedModeBanner: (env?.flavor == BuildFlavor.dev),
      locale: Get.deviceLocale,
      translations: AppTranslations(),
      fallbackLocale: const Locale('es', 'ES'),
      //title: AppTranslations.appTitle.tr,
      unknownRoute: getUnknownPage(),
      initialRoute: getInitialPage(),
      getPages: getPages(),
      //initialBinding: ,
      localizationsDelegates: const [
        // CountryLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
        //Locale.fromSubtags(languageCode: 'en'),
        // Locale.fromSubtags(languageCode: 'es'),
      ],
      theme: getTheme(),
      builder: (_, child) {
        return MainLayoutPage(
          controller: Get.find<MainLayoutController>(tag: 'MainLayoutController'),
          child: child ?? Center(child: Text('Something went wrong at the initialization...')),
        );
      }
    );
  }

  ThemeData getTheme() {
    return ThemeData(
        primaryColor: Colors.green,
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

class ExampleAppInit {

  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await setUpLocator();
  }
}