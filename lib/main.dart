import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:walletappui/Pages/Themes/themes.dart';
import 'package:walletappui/Pages/home_page.dart';
import 'package:walletappui/Pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.lightTheme(context),  // MyTheme.darkTheme(context),
      themeMode: ThemeMode.system,
      initialRoute: "/splashPage",
      getPages: [
        GetPage(
          name: '/splashPage',
          page: () => const SplashPage(),
        ),
        GetPage(
          name: '/homePage',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
