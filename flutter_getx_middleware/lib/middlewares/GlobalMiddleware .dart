import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../bindings/OtherBinding.dart';
import '../controllers/AuthController.dart';

class GlobalMiddleware extends GetMiddleware {
  final authController = Get.find<AuthController>();

  @override
  RouteSettings? redirect(String? route) {
    return authController.authenticated || route == '/login'
        ? null
        : const RouteSettings(name: '/login');
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    print('>>> Page ${page!.name} called');
    print('>>> User ${authController.username} logged');
    return page;
  }

  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    bindings = [OtherBinding()];
    return bindings;
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    print('Bindings of ${page.toString()} are ready');
    return page;
  }

  @override
  Widget onPageBuilt(Widget page) {
    print('Widget ${page.toStringShort()} will be showed');
    return page;
  }

  @override
  void onPageDispose() {
    print('PageDisposed');
  }
}
