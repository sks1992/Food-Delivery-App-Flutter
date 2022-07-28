import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/controller/meal__controller.dart';
import '../../core/util/constants.dart';
import 'add_card_widget.dart';
import 'item_row_widgets.dart';

class MealDetailWidgets extends StatelessWidget {
  MealDetailWidgets({Key? key, required this.index}) : super(key: key);

  final int index;

  final MealController _controller =
      Get.put(MealController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.9,
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/${mealData[index].imageUrl}",
                    width: Get.width * 0.42,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Text(
              mealData[index].name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(
              height: Get.height * 0.02,
            ),
            Text(
              mealData[index].fullDescription,
              style: const TextStyle(color: Colors.grey, fontSize: 18),
            ),
            SizedBox(
              height: Get.height * 0.025,
            ),
            Container(
              height: Get.height * 0.1,
              width: Get.width - 20,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(
                  20,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemRowWidgets(
                    label1: mealData[index].calories.toString(),
                    label2: 'kcal',
                  ),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  ItemRowWidgets(
                    label1: mealData[index].grams.toString(),
                    label2: 'grams',
                  ),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  ItemRowWidgets(
                    label1: mealData[index].proteins.toString(),
                    label2: 'proteins',
                  ),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  ItemRowWidgets(
                    label1: mealData[index].fats.toString(),
                    label2: 'fats',
                  ),
                  SizedBox(
                    width: Get.width * 0.03,
                  ),
                  ItemRowWidgets(
                    label1: mealData[index].crabs.toString(),
                    label2: 'carbs',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Get.height * 0.06,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Add in poke"),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: () {},
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                  ),
                  width: Get.width * 0.35,
                  child: Obx(
                    () => Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            if (_controller.count.value > 1) {
                              _controller.count.value =
                                  _controller.decrease(_controller.count.value);
                            }
                          },
                          icon: const Icon(
                            Icons.remove,
                          ),
                        ),
                        Text(
                          _controller.count.value.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                        IconButton(
                          onPressed: () {
                            if (_controller.count.value < 30) {
                              _controller.count.value =
                                  _controller.increase(_controller.count.value);
                            }
                          },
                          icon: const Icon(
                            Icons.add,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    _controller.insertItem(mealData[index]);
                    Get.back();
                    showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      backgroundColor: Colors.white,
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return AddCartWidget(
                          index: index,
                        );
                      },
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(Get.height * 0.025),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: Get.width * 0.45,
                    child: Row(
                      children: [
                        const Text(
                          "Add To Cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          width: Get.width * 0.03,
                        ),
                        Obx(
                          () => Text(
                            "\$ ${mealData[index].price * _controller.count.value}",
                            style: const TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
