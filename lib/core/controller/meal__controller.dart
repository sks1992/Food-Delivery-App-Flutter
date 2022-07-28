import 'package:food_delivery_app/core/models/meal.dart';
import 'package:get/get.dart';

class MealController extends GetxController {
  var count = 1.obs;
  RxList<Meal> mealList = RxList<Meal>([]);

  int increase(int number) {
    number = number + 1;
    return number;
  }

  int decrease(int number) {
    number = number - 1;
    return number;
  }

  void insertItem(Meal meal) {
    mealList.add(meal);
  }
}
