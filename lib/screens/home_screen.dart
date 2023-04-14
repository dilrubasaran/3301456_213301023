import 'package:e_ticaret_uyg/pages/products.dart';
import 'package:flutter/material.dart';
import '/pages/categories_page.dart';
import '/pages/favorites_page.dart';
import '/pages/cart_page.dart';
import '/pages/profile_page.dart';
import '/pages/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var products = Products();
    return Scaffold(
      body: Center(
        child: products,

        /*child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],*/
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
