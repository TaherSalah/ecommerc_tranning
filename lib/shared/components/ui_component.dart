import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';


Widget shopLogo ()=> Center(
  child: Column(
    children: [
      const SizedBox(
        height: 90,
      ),
      Stack(
        alignment: const Alignment(2.5, -2.3),
        children: [
          SvgPicture.asset(
            'assets/images/logo.svg',
            color: HexColor('F3603F'),
          ),
          SvgPicture.asset('assets/images/logo2.svg',
              color: HexColor('F3603F')),
        ],
      ),
    ],
  ),
);