import 'package:get/get.dart';

import 'AuthController.dart';

class LoginController extends GetxController {
  @override
  void onInit() {
    print('>>> LoginController started');
    super.onInit();
  }

  AuthController get authController => Get.find<AuthController>();
}
