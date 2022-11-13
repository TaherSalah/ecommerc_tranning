import 'package:ecommerc/moduels/cart/cart_screen.dart';
import 'package:ecommerc/moduels/explore/explore_screen.dart';
import 'package:ecommerc/moduels/favorites/favorite_srcreen.dart';
import 'package:flutter/material.dart';

import '../../moduels/account/account_screen.dart';
import '../home_screen.dart';


int currentIndex=0;


List <Widget> bottomScreens=[
  const ShopHomeScreen(),
  const ExploreScreen(),
  const CartScreen(),
  const FavoritesScreen(),
  const AccountScreen()
];

void changeBottom(int index){
  currentIndex=index;
}