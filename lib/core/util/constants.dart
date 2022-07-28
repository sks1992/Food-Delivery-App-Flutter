import 'package:flutter/material.dart';

import '../models/meal.dart';

final List<String> categoryData = [
  "+",
  "Salad",
  "Pizza",
  "Snacks",
  "Beverages",
  "Sweets",
];

final List<Meal> mealData = [
  Meal(
    id: "p1",
    name: "meal1",
    description: 'Food plate with omlette, \ntomato, and coriander',
    price: 30.0,
    imageUrl: "food_plate.png",
    category: 'Salad',
    calories: '325',
  ),
  Meal(
    id: "p2",
    name: "meal2",
    description: "Two Slices Of Pizza \n with deliceus text",
    price: 40.0,
    imageUrl: "sweet_bowl.png",
    category: 'Salad',
    calories: '300',
  ),
  Meal(
    id: "p3",
    name: "meal3",
    description: 'Vegtable soup with \nspices and potato',
    price: 10.0,
    imageUrl: "dessert.png",
    category: 'Pizza',
    calories: '350',
  ),
  Meal(
    id: "p4",
    name: "meal4",
    description: 'Indian chutney with red\nmirchi and green mirchi',
    price: 10.0,
    imageUrl: "indian_chutney.png",
    category: 'Snacks',
    calories: '425',
  ),
  Meal(
    id: "p5",
    name: "meal5",
    description: "Two Slices Of Pizza \n with deliceus text",
    price: 20.0,
    imageUrl: "sweet_bowl.png",
    category: 'Beverages',
    calories: '320',
  ),
];

const colors = [
  Colors.red,
  Colors.green,
  Colors.greenAccent,
  Colors.amberAccent,
  Colors.blue,
  Colors.amber,
];
