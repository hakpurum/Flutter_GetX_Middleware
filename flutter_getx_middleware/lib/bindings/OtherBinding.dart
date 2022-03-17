import 'package:get/get.dart';

import '../controllers/LoginController.dart';
import '../controllers/OtherController.dart';

class OtherBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(OtherController());
    Get.put(LoginController());
  }
}
