import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_statmanagement/controllers/example_3_controller.dart';
import 'package:get/get.dart';

class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  Example3Controller controller = Get.put(Example3Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example 3'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Dark Theme',
                style: TextStyle(fontSize: 20),
              ),
              Obx(
                () => Switch(
                    value: controller.notification.value,
                    onChanged: (value) {
                      controller.setTheme(value);
                    }),
              )
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: controller.fruits.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(controller.fruits[index]),
                  trailing: Obx(
                    () => controller.checkFavorite(index)
                        ? const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          )
                        : const Icon(
                            Icons.favorite_border_outlined,
                            color: Colors.grey,
                          ),
                  ),
                  onTap: () => controller.setFavorites(index),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
