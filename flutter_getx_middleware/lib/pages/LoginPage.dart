import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/LoginController.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Login'),
          onPressed: () {
            controller.authController.authenticated = true;
            controller.authController.username = "Hasan Akpürüm";
            Get.offNamed('/home', arguments: [
              {"user": controller.authController.username}
            ]);
          },
        ),
      ),
    );
  }
}
