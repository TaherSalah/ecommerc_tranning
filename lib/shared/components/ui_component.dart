import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';

Widget shopLogo() => Center(
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

Widget defualtBottomNavBar() => BottomNavigationBar(
      elevation: 10.0,
      onTap: (index) {},
      selectedItemColor: HexColor('#53B175'),
      selectedIconTheme: IconThemeData(color: HexColor('#53B175')),
      unselectedLabelStyle: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: HexColor('#030303')),
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_rounded,
            color: HexColor('#181725'),
          ),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.explore,
            color: HexColor('#181725'),
          ),
          label: 'explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart_rounded,
            color: HexColor('#181725'),
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite_rounded,
            color: HexColor('#181725'),
          ),
          label: 'Favourite',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: HexColor('#181725'),
          ),
          label: 'Account',
        ),
      ],
    );
