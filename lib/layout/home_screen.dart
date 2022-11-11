import 'dart:ui';

import 'package:ecommerc/shared/components/ui_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import '../models/groceries/groceries_model.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: defualtBottomNavBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              shopLogo(),
              const Padding(padding: EdgeInsets.symmetric(vertical: 6)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/map.png',
                    width: 20,
                    height: 20,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    'Dhaka, Banassre',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: HexColor('F2F3F2'),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search_rounded),
                        hintText: 'Search Store',
                        focusedBorder: InputBorder.none,
                        hintStyle: TextStyle(
                            fontSize: 14,
                            color: HexColor('7C7C7C'),
                            fontWeight: FontWeight.w600)),
                  )),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 130,
                width: 336,
                decoration: BoxDecoration(
                  border: Border.all(color: HexColor('#F2F3F2')),
                  borderRadius: BorderRadius.circular(
                    8,
                  ),
                  color: HexColor('#FFFFFF'),
                ),
                child: Stack(
                  children: [
                    Image.asset(
                      'assets/images/Rectangle 17.png',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Positioned(
                      top: -6,
                      left: 255,
                      child: Image.asset(
                        'assets/images/top left veg.png',
                        height: 60,
                        width: 90,
                      ),
                    ),
                    Positioned(
                      bottom: -8,
                      left: 290,
                      child: Image.asset(
                        'assets/images/pngfuel bottom left.png',
                        height: 60,
                        width: 50,
                      ),
                    ),
                    Positioned(
                      bottom: 3.5,
                      left: 170,
                      child: Container(
                        height: 5,
                        width: 10,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: HexColor('#53B175')),
                      ),
                    ),
                    Positioned(
                      bottom: 3.5,
                      left: 182,
                      child: Container(
                        height: 5,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 3.5,
                      left: 194,
                      child: Container(
                        height: 5,
                        width: 10,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset('assets/images/right veg.png'),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'Fresh Vegetables',
                              style: TextStyle(
                                  fontFamily: 'clon',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Get Up To 40% OFF',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'air',
                                  color: HexColor('#53B175')),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text(
                    'Exclusive Offer',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#53B175')),
                      )),
                ],
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 10)),
              Container(
                height: 240,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => categoriesBuilder(),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 8,
                        ),
                    itemCount: 5),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  const Text(
                    'Best Selling',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#53B175')),
                      )),
                ],
              ),
              Container(
                height: 240,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => bestSealingBuilder(),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 8,
                        ),
                    itemCount: 5),
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  const Text(
                    'Groceries',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: HexColor('#53B175')),
                      )),
                ],
              ),
              Container(
                height: 120,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => groceriesBuilder(
                        itemsType[index].image,
                        itemsType[index].text,
                        itemsType[index].backgroundColor),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: itemsType.length),
              ),
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              SizedBox(
                height: 240,
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => meatBuilder(
                          meatItemsType[index].image,
                          meatItemsType[index].titleText,
                          meatItemsType[index].subTitleText,
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: meatItemsType.length),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 15)),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriesBuilder() => Container(
        height: 240,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: HexColor('#E2E2E2'))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/ba.jpg',
                height: 70,
                width: 100,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Organic Bananas',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.5),
                  child: Text(
                    '7pcs, Priceg',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#7C7C7C'),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    '\$ 4.99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#181725'),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.5),
                            color: HexColor('#53B175')),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Vector.svg',
                              height: 20,
                              width: 20,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  Widget bestSealingBuilder() => Container(
        height: 240,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: HexColor('#E2E2E2'))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                'assets/images/falfel.jpg',
                height: 70,
                width: 100,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Bell Pepper Red',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.5),
                  child: Text(
                    '1kg, Priceg',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#7C7C7C'),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    '\$ 4.99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#181725'),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.5),
                            color: HexColor('#53B175')),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Vector.svg',
                              height: 20,
                              width: 20,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      );
  Widget groceriesBuilder(String image, String text, String color) => Container(
        height: 95,
        width: 220,
        decoration: BoxDecoration(
          color: HexColor(color).withOpacity(0.4),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 65,
              height: 65,
            ),
            const SizedBox(
              width: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            )
          ],
        ),
      );
  Widget meatBuilder(
    String image,
    String titleText,
    String subTitleText,
  ) =>
      Container(
        height: 240,
        width: 170,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: HexColor('#E2E2E2'))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset(
                image,
                height: 70,
                width: 100,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  titleText,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.5),
                  child: Text(
                    subTitleText,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#7C7C7C'),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text(
                    '\$ 4.99',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#181725'),
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      print('object');
                    },
                    child: Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13.5),
                            color: HexColor('#53B175')),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/images/Vector.svg',
                              height: 20,
                              width: 20,
                            )
                          ],
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      );
}
