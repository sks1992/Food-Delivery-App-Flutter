import 'package:flutter/material.dart';

class CustomRowWidgets extends StatelessWidget {
  const CustomRowWidgets({
    Key? key,
    required this.scaffoldKey,
  }) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: const Icon(Icons.menu),
        ),
        Container(
          padding: const EdgeInsets.all(5),
          width: MediaQuery.of(context).size.width * 0.6,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(30)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: const Center(
            child: Text(
              "100a SK Road  24 mins",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        /*IconButton(
          padding:  EdgeInsets.zero,
          onPressed: () {},
          icon:*/
        InkWell(
          onTap: () {
            scaffoldKey.currentState?.openDrawer();
          },
          child: const Icon(Icons.search),
        ),
        // ),
      ],
    );
  }
}
