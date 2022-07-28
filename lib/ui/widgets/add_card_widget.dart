import 'package:flutter/material.dart';
import 'package:food_delivery_app/core/controller/meal__controller.dart';
import 'package:get/get.dart';

class AddCartWidget extends StatelessWidget {
  AddCartWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  final MealController _controller = Get.put(MealController());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height * 0.95,
      padding: const EdgeInsets.all(15.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.06),
            const Text(
              "We will deliver in \n 24 minutes to the  Address:",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: Get.height * 0.01),
            Row(
              children: [
                const Text(
                  "100 a SK Road",
                  style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Change address",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: Get.height * 0.3,
              child: Obx(
                () => ListView.builder(
                  itemCount: _controller.mealList.length,
                  itemBuilder: (context, index) {
                    return Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            "assets/images/${_controller.mealList[index].imageUrl}",
                            width: 100,
                          ),
                        ),
                        SizedBox(width: Get.width * 0.06),
                        SizedBox(
                          width: Get.width * 0.6,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _controller.mealList[index].name,
                                    style: const TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.04,
                                  ),
                                  Obx(
                                    () => Text(
                                      "\$ ${_controller.mealList[index].price * _controller.count.value}",
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    width: Get.width * 0.15,
                                    child: IconButton(
                                      onPressed: () {
                                        _controller.count.value = _controller
                                            .decrease(_controller.count.value);
                                        if (_controller.count.value == 0) {
                                          _controller.mealList.removeAt(index);
                                        }
                                      },
                                      icon: const Icon(
                                        Icons.remove,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: Get.width * 0.01),
                                  Obx(
                                    () => Text(
                                      _controller.count.value.toString(),
                                      style: const TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  SizedBox(width: Get.width * 0.01),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(15)),
                                    ),
                                    width: Get.width * 0.15,
                                    child: IconButton(
                                      onPressed: () {
                                        _controller.count.value = _controller
                                            .increase(_controller.count.value);
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: Get.height * 0.03),
            const Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(
                    Icons.no_meals,
                    size: 40,
                  ),
                  const Text(
                    'cutlery',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        width: Get.width * 0.15,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.remove,
                          ),
                        ),
                      ),
                      SizedBox(width: Get.width * 0.01),
                      const Text(
                        "1",
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: Get.width * 0.01),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(15)),
                        ),
                        width: Get.width * 0.15,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Delivery',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: Get.height * 0.01),
                    const Text(
                      'Free delivery fron \$30',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
                const Text(
                  '₹0.00',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.05),
            Text(
              'Payment method',
              style: TextStyle(
                color: Colors.grey.shade500,
                fontSize: 18,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.payment,
                    ),
                    SizedBox(width: Get.width * 0.03),
                    const Text(
                      'Debit Card',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 15,
                  ),
                ),
              ],
            ),
            SizedBox(height: Get.height * 0.07),
            SizedBox(
              height: 50,
              width: 350,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                    ),
                  ),
                  onPressed: () {
                    _controller.count.value = 1;
                    Get.back();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Pay',
                      ),
                      Text('24min . ₹285')
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
