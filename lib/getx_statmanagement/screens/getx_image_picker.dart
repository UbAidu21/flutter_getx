import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_statmanagement/controllers/image_controller.dart';
import 'package:get/get.dart';

class GetxImagePicker extends StatefulWidget {
  const GetxImagePicker({super.key});

  @override
  State<GetxImagePicker> createState() => _GetxImagePickerState();
}

class _GetxImagePickerState extends State<GetxImagePicker> {
  ImagePickerController controller = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
      () => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 100,
              backgroundImage: controller.imagePath.isNotEmpty
                  ? FileImage(File(controller.imagePath.value))
                  : null,
            ),
          ),
          TextButton.icon(
            onPressed: () {
              controller.getImage();
            },
            icon: const Icon(Icons.camera_alt_rounded),
            label: const Text('Pick Image'),
          )
        ],
      ),
    ));
  }
}
