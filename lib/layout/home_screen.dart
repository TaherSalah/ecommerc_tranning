import 'dart:ui';

import 'package:ecommerc/shared/components/ui_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../shared/components/styles/color.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
              Padding(padding: EdgeInsets.symmetric(vertical: 10)),
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
              SizedBox(
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
                            Text(
                              'Fresh Vegetables',
                              style: TextStyle(
                                  fontFamily: 'clon',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
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
              SizedBox(
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
                  Spacer(),
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
                height: 250,
                width: 173,
                decoration: BoxDecoration(
                  color: HexColor('#E5E5E5'),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset('assets/images/banan.svg'),
Text('Organic Bananas',),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
