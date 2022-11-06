import 'package:ecommerc/shared/components/ui_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

import '../shared/components/styles/color.dart';

class ShopHomeScreen extends StatelessWidget {
  const ShopHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
              child:  TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search_rounded),
                  hintText: 'Search Store',
                  focusedBorder: InputBorder.none,
                  hintStyle: TextStyle(fontSize: 14,color: HexColor('7C7C7C'),fontWeight: FontWeight.w600)
                ),
              )),
          SizedBox(height: 25,),
          Container(
            height: 130,
            width: 336,
            decoration: BoxDecoration(
              border: Border.all(color: HexColor('#F2F3F2')),
              borderRadius: BorderRadius.circular(8,),
               color: HexColor('#FFFFFF'),

            ),
            child: Stack(
              children: [
                Image.asset('assets/images/Rectangle 17.png',fit: BoxFit.cover,width: double.infinity,height: double.infinity,),
                Row(
                  children: [
                    Image.asset('assets/images/right veg.png'),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Fresh Vegetables',style: TextStyle(fontFamily: 'clon',fontSize: 17,fontWeight: FontWeight.w400),),
                        Text('Get Up To 40% OFF',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),

                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
