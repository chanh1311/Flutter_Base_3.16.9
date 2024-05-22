import 'package:flutter/material.dart';
import 'package:flutter_base/config/language/messages.dart';
import 'package:flutter_base/config/routes/routes.dart';
import 'package:flutter_base/config/themes/theme_config.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  GetStorage config = GetStorage();
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     // Theme init
      ThemeData theme = defaultTheme;
    if (config.read('themes') != defaultTheme.toString() &&
        config.read('themes') != null) {
      switch (config.read('themes')) {
        case 'cyanTheme':
          theme = cyanTheme;
          break;
        case 'greenTheme':
          theme = greenTheme;
          break;
        case 'redTheme':
          theme = redTheme;
          break;
        case 'indigoTheme':
          theme = indigoTheme;
          break;
        case 'purpleTheme':
          theme = purpleTheme;
          break;
        case 'orgranTheme':
          theme = orgranTheme;
          break;
        case 'greyTheme':
          theme = greyTheme;
          break;
        default:
          theme = defaultTheme;
      }
    } else {
      config.write('themes', 'defaultTheme');
    }
     // Locale init
    var locale = const Locale('vi', 'VN');
    if (config.read('lang') != null) {
      var language = config.read('lang').toString().split('_');
      locale = Locale(language[0], language[1]);
    }
    // Route init
    String initialRoute = '/';
    if(config.read('username') != '' && config.read('username') != null){
      initialRoute = '/home';
    }
    else {
      initialRoute = '/login';
    }

    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      translations: Messages(), // your translations
      locale: locale,
      fallbackLocale: const Locale('en', 'US'),
      initialRoute: initialRoute,
      getPages: routerPage
     
    );
  }
}




