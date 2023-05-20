import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_basic/models/languages.dart';
import 'package:flutter_getx/getx_basic/screens/home_screen.dart';
import 'package:flutter_getx/getx_basic/screens/second_screen.dart';
import 'package:flutter_getx/getx_statmanagement/screens/example_3.dart';
import 'package:flutter_getx/getx_statmanagement/screens/getx_image_picker.dart';
import 'package:flutter_getx/getx_statmanagement/screens/login_screen.dart';
import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GetX',
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'), translations: Languages(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),

      home: const LoginScreen(),
      // initialRoute: '/',

      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/second', page: () => const SecondScreen()),
      ],
    );
  }
}
