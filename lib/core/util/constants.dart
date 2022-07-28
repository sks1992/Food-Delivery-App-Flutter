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
    name: "Meal1",
    description: 'Food plate with omlette, \ntomato, and coriander',
    price: 30.0,
    imageUrl: "food_plate.png",
    category: 'Salad',
    calories: 325,
    grams: 420,
    proteins: 21,
    fats: 19,
    crabs: 65,
    fullDescription:
        'A bagel is a type of bread roll with a special O-ring shape. It is characterized by a shiny, tough crust and a chewy crumb.',
  ),
  Meal(
    id: "p2",
    name: "Meal2",
    description: "Two Slices Of Pizza \n with deliceus text",
    price: 40.0,
    imageUrl: "sweet_bowl.png",
    category: 'Salad',
    calories: 300,
    grams: 420,
    proteins: 21,
    fats: 19,
    crabs: 65,
    fullDescription:
        'A bagel is a type of bread roll with a special O-ring shape. It is characterized by a shiny, tough crust and a chewy crumb.',
  ),
  Meal(
    id: "p3",
    name: "Meal3",
    description: 'Vegtable soup with \nspices and potato',
    price: 10.0,
    imageUrl: "dessert.png",
    category: 'Pizza',
    calories: 300,
    grams: 420,
    proteins: 21,
    fats: 19,
    crabs: 65,
    fullDescription:
        'A bagel is a type of bread roll with a special O-ring shape. It is characterized by a shiny, tough crust and a chewy crumb.',
  ),
  Meal(
    id: "p4",
    name: "Meal4",
    description: 'Indian chutney with red\nmirchi and green mirchi',
    price: 10.0,
    imageUrl: "indian_chutney.png",
    category: 'Snacks',
    calories: 300,
    grams: 420,
    proteins: 21,
    fats: 19,
    crabs: 65,
    fullDescription:
        'A bagel is a type of bread roll with a special O-ring shape. It is characterized by a shiny, tough crust and a chewy crumb.',
  ),
  Meal(
    id: "p5",
    name: "Meal5",
    description: "Two Slices Of Pizza \n with deliceus text",
    price: 20.0,
    imageUrl: "sweet_bowl.png",
    category: 'Beverages',
    calories: 300,
    grams: 420,
    proteins: 21,
    fats: 19,
    crabs: 65,
    fullDescription:
        'A bagel is a type of bread roll with a special O-ring shape. It is characterized by a shiny, tough crust and a chewy crumb.',
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
