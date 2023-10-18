import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profiling_app/xcore.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text('Hello'),
      ),
    );
  }
}
