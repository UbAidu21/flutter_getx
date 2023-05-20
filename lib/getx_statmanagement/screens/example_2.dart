import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_statmanagement/controllers/example_2_controller.dart';
import 'package:get/get.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {

  Example2Controller controller = Get.put(Example2Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 2'),
      ),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: Get.height * .2,
              color: Colors.blue.withOpacity(controller.opacity.value ),
            ),
          ),
          Obx(
            () => Slider(
              value: controller.opacity.value,
              onChanged: (value) {
                controller.setpacity(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
