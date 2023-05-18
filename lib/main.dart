import 'package:flutter/material.dart';
import 'package:flutter_getx/screens/home_screen.dart';
import 'package:flutter_getx/screens/second_screen.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
     
      
      home: const HomeScreen(),
      // initialRoute: '/',

      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(name: '/second', page: () =>  SecondScreen()),
        
      ],
    );
  }
}
