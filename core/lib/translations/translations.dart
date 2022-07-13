import 'package:get/get.dart';

class AppTranslations extends Translations {
  static const String appTitle = 'appTitle';
  static const String appVersion = 'appVersion';

  // Global
  


  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          appTitle: 'ExampleApp',
          appVersion: '1.0.0',

        },

        'es_ES': {
          appTitle: 'example',
          appVersion: '1.0.0',

          

        }
      };
}
