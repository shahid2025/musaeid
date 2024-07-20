import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:musaeid/common/localizations/languages.dart';
import 'package:musaeid/go_router/goRouter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getSavedLocale(),
        builder: (BuildContext context,AsyncSnapshot<Locale> snapshot) {
          if (snapshot.hasData) {
            return Sizer(
                builder: (context, orientation, deviceType)
                {
                  return
                    GetMaterialApp.router(
                      translations: Languages(),
                      locale: snapshot.data!,
                      fallbackLocale: Locale('en' , 'US'),
                      debugShowCheckedModeBanner: false,
                      title: 'Flutter Demo',
                      theme: ThemeData(
                        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                        useMaterial3: true,
                      ),
                      routerDelegate: AppRoute.router.routerDelegate,
                      routeInformationProvider: AppRoute.router.routeInformationProvider,
                      routeInformationParser: AppRoute.router.routeInformationParser,
                      //  home: const MyHomePage(title: 'Flutter Demo Home Page'),
                    );
                }
            );
          }else{
            return const CircularProgressIndicator();
          }
        }
    );
  }

  static Future<Locale> _getSavedLocale() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? languageCode = prefs.getString('language');
    String? countryCode = prefs.getString('countryCode');
    if (languageCode != null && countryCode != null) {
      return Locale(languageCode, countryCode);
    } else {
      return const Locale('ar', 'AR');// Default language
    }
  }
}

void setLocale(Locale locale) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('language', locale.languageCode);
  await prefs.setString('countryCode', locale.countryCode ?? '');
  Get.updateLocale(locale);
}

