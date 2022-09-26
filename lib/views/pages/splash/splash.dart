
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../auth flow/login/login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Get.put(ButtonsController());
    Future.delayed(const Duration(seconds: 2), () => Get.to(() => const LoginPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
