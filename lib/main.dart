import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:naykhanyo/data/service/api_service.dart';
import 'package:naykhanyo/widget/bottom_nav.dart';

void main() {
  Get.put(APIService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: BottomNav(),
    );
  }
}

