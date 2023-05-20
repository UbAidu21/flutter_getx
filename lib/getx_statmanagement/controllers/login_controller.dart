import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool loading = false.obs;
  Future<void> login() async {
    loading.value = true;
    try {
      final response =
          await post(Uri.parse('https://reqres.in/api/login'), body: {
        'email': emailController.value.text,
        'password': passwordController.value.text,
      });

      var data = jsonDecode(response.body);
      print(data);
      print(response.statusCode);
      if (response.statusCode == 200) {
        Get.snackbar('Login ', 'Login Successfully');
        loading.value = false;
      } else {
        Get.snackbar('Error', data['error']);
        loading.value = false;
      }
    } catch (e) {
      Get.snackbar('Exception', e.toString());
      loading.value = false;
    }
  }
}
