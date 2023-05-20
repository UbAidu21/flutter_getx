import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: ListTile(
                title: const Text('GetX Dialog'),
                subtitle: const Text('Open GetX Alert Dialog.'),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    middleText: 'Are you sure to delete this chat',
                    textCancel: 'Cancel',
                    textConfirm: 'Yes',
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('GetX Bottom Sheet'),
                subtitle: const Text('Open GetX Bottom Sheet to Change Theme'),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Card(
                              color: Colors.blueGrey,
                              child: ListTile(
                                leading: const Icon(
                                  Icons.light_mode,
                                  color: Colors.white,
                                ),
                                title: const Text(
                                  'Light Mode',
                                  style: style,
                                ),
                                onTap: () {
                                  Get.changeTheme(
                                    ThemeData.light(useMaterial3: true),
                                  );
                                  Get.back();
                                },
                              ),
                            ),
                            Card(
                              color: Colors.blueGrey,
                              child: ListTile(
                                leading: const Icon(
                                  Icons.dark_mode,
                                  color: Colors.white,
                                ),
                                title: const Text(
                                  'Dark Mode',
                                  style: style,
                                ),
                                onTap: () {
                                  Get.changeTheme(
                                    ThemeData.dark(useMaterial3: true),
                                  );
                                  Get.back();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Next Screen'),
                onTap: () {
                  // Get.to(() => const SecondScreen());
                  Get.toNamed('/second', arguments: [
                    'Ubaid Ullah',
                    'S/O Ghulam Hazrat',
                    'Flutter Developer',
                    data
                  ]);
                },
              ),
            ),
            Container(
              height: Get.height * 0.2,
              width: Get.width * 0.5,
              color: Colors.amber,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(
          eccentricity: 0.5,
        ),
        onPressed: () {
          Get.snackbar('GetX', 'This is a GetX Snackbar');
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}

const style = TextStyle(
  color: Colors.white,
);

List data = const [
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
  Card(
    child: ListTile(
      title: Text('Check'),
    ),
  ),
];
