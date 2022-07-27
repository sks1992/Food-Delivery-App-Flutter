import 'package:flutter/material.dart';
import 'package:food_delivery_app/app_route.dart';
import 'package:get/get.dart';

void main() => runApp(const FoodDeliveryApp());

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery App',
      getPages: AppRoute.route,
      initialRoute: RouteNames.home,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
