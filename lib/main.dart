import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'xcore.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Profiling App',
      debugShowCheckedModeBanner: false,
      initialRoute: PageRouter.signIn,
      getPages: PageRouter.pages,
    );
  }
}
