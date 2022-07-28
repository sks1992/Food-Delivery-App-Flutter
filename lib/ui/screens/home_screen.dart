import 'package:flutter/material.dart';

import '../widgets/app_drawer.dart';
import '../widgets/category_row_widgets.dart';
import '../widgets/custom_row_widgets.dart';
import '../widgets/food_page_view_card.dart';
import '../widgets/meal_menu_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const AppDrawer(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomRowWidgets(scaffoldKey: scaffoldKey),
                const SizedBox(height: 20),
                const Text(
                  "Hits of The week",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                const FoodPageViewCard(),
                const SizedBox(
                  height: 20,
                ),
                const CategoryRowWidgets(),
                const SizedBox(
                  height: 25,
                ),
                const MealMenuWidgets(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
