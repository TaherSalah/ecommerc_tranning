import 'package:ecommerc/layout/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../shared/components/component.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 400,
            width: 371,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(0, 2),
                      spreadRadius: 2.5)
                ],
                color: HexColor('#F2F3F2'),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Stack(
              children: [
                Center(child: Image.asset('assets/images/frutes.png')),
                Positioned(
                    top: 40,
                    left: 0,
                    child: IconButton(
                        onPressed: () {
                          navigate(context, const ShopHomeScreen());
                        },
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: HexColor('#181725'),
                        ))),
                Positioned(
                    top: 35,
                    right: 0,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.save_alt,
                          color: HexColor('#181725'),
                        ))),
                ////////
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
              ],
            ),
          ),
          Row(
            children: [
              Text('Naturel Red Apple'),
              Spacer(),
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
          ),
          Text(
            '1kg, Price',
            textAlign: TextAlign.start,
          ),
          Row(
            children: [
Image.asset('assets/images/minus.png'),
              Container(
                height: 42,
                width: 42,
decoration: BoxDecoration(

  borderRadius: BorderRadius.circular(16),
  border: Border.all( color: HexColor('E2E2E2'), )
),
                child: Center(child: Text('1')),


              ),
              Image.asset('assets/images/plus.png'),
Spacer(),
              Text('\$ 4.99'),


            ],
          ),
        ],
      ),
    );
  }
}
