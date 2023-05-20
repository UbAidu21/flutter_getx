import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
                'Welcome to GetX ${Get.arguments[0]} ${Get.arguments[1]} ${Get.arguments[2]}'),
            ...Get.arguments[3]
          ],
        ),
      ),
    );
  }
}
