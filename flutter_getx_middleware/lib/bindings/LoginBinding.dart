import 'package:get/get.dart';

import '../controllers/AuthController.dart';
import '../controllers/LoginController.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(LoginController());
  }
}
