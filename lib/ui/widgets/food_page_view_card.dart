import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/util/constants.dart';

class FoodPageViewCard extends StatefulWidget {
  const FoodPageViewCard({Key? key}) : super(key: key);

  @override
  State<FoodPageViewCard> createState() => _FoodPageViewCardState();
}

class _FoodPageViewCardState extends State<FoodPageViewCard> {
  PageController pageController = PageController();

  var currentPageValue = 0.0;

  @override
  void initState() {
    super.initState();

    pageController.addListener(() {
      setState(() {
        currentPageValue = pageController.page!;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 320,
          child: PageView.builder(
            controller: pageController,
            itemCount: foodList.length,
            itemBuilder: (context, index) {
              return _buildPageItems(index);
            },
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: foodList.length,
          effect: CustomizableEffect(
            activeDotDecoration: DotDecoration(
              width: MediaQuery.of(context).size.width / 4 - 20,
              height: 12,
              color: Colors.indigo,
              rotationAngle: 180,
              verticalOffset: -10,
              borderRadius: BorderRadius.circular(24),
            ),
            dotDecoration: DotDecoration(
              width: MediaQuery.of(context).size.width / 4 - 20,
              height: 12,
              color: Colors.grey,
              borderRadius: BorderRadius.circular(16),
              verticalOffset: 0,
            ),
            spacing: 6.0,
            inActiveColorOverride: (i) => colors[i],
          ),
        ),
      ],
    );
  }

  Widget _buildPageItems(int index) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: index.isEven ? Colors.yellow : Colors.blue,
                ),
              ),
            ),
          ],
        ),
        Positioned(
          right: 100,
          bottom: 140,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/${foodList[index]['image']}",
              width: 150,
              //color: Colors.pink,
            ),
          ),
        ),
        Positioned(
          right: 50,
          bottom: 40,
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${foodList[index]['message']}",
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 0,
                          blurRadius: 10),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      "\$ ${foodList[index]['price']}",
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        /* Align(
          alignment: Alignment.center,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              "assets/images/${foodList[index]['image']}",
              width: 150,
              //color: Colors.pink,
            ),
          ),
        ),*/
      ],
    );
  }
}
