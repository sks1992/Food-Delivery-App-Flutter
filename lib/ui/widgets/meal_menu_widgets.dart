import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/util/constants.dart';
import 'meal_detail_widgets.dart';

class MealMenuWidgets extends StatelessWidget {
  const MealMenuWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: mealData.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            splashColor: Colors.green,
            onTap: () {
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
                  return MealDetailWidgets(
                    index: index,
                  );
                },
              );
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    "assets/images/${mealData[index].imageUrl}",
                    width: Get.width *0.35,
                  ),
                ),
                 SizedBox(
                  width: Get.width *0.05,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      mealData[index].name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                     SizedBox(
                      height:  Get.height *0.03,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                              top: 12, bottom: 12, right: 20, left: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(30)),
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.black38,
                                  spreadRadius: 0,
                                  blurRadius: 10),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "\$ ${mealData[index].price}",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                         SizedBox(
                          width:  Get.width *0.02,
                        ),
                        Text(
                          "${mealData[index].calories}kcal",
                          style: const TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
