import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemRowWidgets extends StatelessWidget {
  const ItemRowWidgets({Key? key, required this.label1, required this.label2}) : super(key: key);

  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label1,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(
          height: Get.height * 0.02,
        ),
        Text(
          label2,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
