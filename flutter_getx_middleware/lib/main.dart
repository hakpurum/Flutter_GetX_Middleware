import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'bindings/LoginBinding.dart';
import 'bindings/OtherBinding.dart';
import 'controllers/AuthController.dart';
import 'middlewares/GlobalMiddleware .dart';
import 'pages/HomePage.dart';
import 'pages/LoginPage.dart';

void main() {
  Get.put(AuthController());
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(
        name: '/home',
        page: () => HomePage(),
        binding: OtherBinding(),
        middlewares: [GlobalMiddleware()],
      ),
      GetPage(
        name: '/login',
        page: () => LoginPage(),
        binding: LoginBinding(),
        middlewares: [GlobalMiddleware()],
      ),
    ],
  ));
}
