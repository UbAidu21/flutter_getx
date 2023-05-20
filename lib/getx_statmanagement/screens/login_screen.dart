import 'package:flutter/material.dart';
import 'package:flutter_getx/getx_statmanagement/controllers/login_controller.dart';
import 'package:get/get.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  LoginController controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                  controller: controller.emailController.value,
                  decoration: const InputDecoration(hintText: 'Email')),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                  controller: controller.passwordController.value,
                  decoration: const InputDecoration(hintText: 'Password')),
              const SizedBox(
                height: 20,
              ),
              Obx(
                () => OutlinedButton.icon(
                  onPressed: () {
                    controller.login();
                  },
                  icon: const Icon(Icons.login),
                  label: controller.loading.value
                      ? const CircularProgressIndicator()
                      : const Text('Log in'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
