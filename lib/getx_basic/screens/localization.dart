import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationScreen extends StatefulWidget {
  const LocalizationScreen({super.key});

  @override
  State<LocalizationScreen> createState() => _LocalizationScreenState();
}

class _LocalizationScreenState extends State<LocalizationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Localization'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: Text('message'.tr),
                subtitle: Text('name'.tr),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('en','US'));
                  },
                  child: const Text('English'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(const Locale('ur','PK'));
                  },
                  child: const Text('اردو'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
