import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Example3Controller extends GetxController {
  RxBool notification = false.obs;

  setTheme(bool value) {
    notification.value = value;

    if (notification.value) {
      Get.changeTheme(ThemeData.dark(useMaterial3: true));
    } else {
      Get.changeTheme(ThemeData.light(useMaterial3: true));
    }
  }

  ///**********Adding List*********** */

  RxList<String> fruits = ['Apple', 'Banana', 'Mango', 'Graps'].obs;
  RxList<dynamic> favFruits = [].obs;

  addToFavorite(String value) {
    favFruits.add(value);
  }

  removerFromFavorite(String value) {
    favFruits.remove(value);
  }

  setFavorites(int index) {
    if (favFruits.contains(fruits[index])) {
      removerFromFavorite(fruits[index]);
      if (kDebugMode) {
        print('${fruits[index]} has Been removed');
      }
    } else {
      addToFavorite(fruits[index]);
      if (kDebugMode) {
        print('${fruits[index]} has Been added');
      }
    }
  }

  checkFavorite(int index) {
    if (favFruits.contains(fruits[index])) {
      return true;
    } else {
      return false;
    }
  }
}
