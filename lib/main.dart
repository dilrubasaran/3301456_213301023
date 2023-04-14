import 'package:e_ticaret_uyg/pages/products.dart';
import 'package:e_ticaret_uyg/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'pages/cart_page.dart';
import 'pages/favorites_page.dart';
import 'pages/profile_page.dart';
import 'screens/welcome_screen.dart';
import 'screens/home_screen.dart';
import '/pages/categories_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => WelcomeScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
        '/categories': (context) => CategoriesPage(),
        '/favorites': (context) => FavoritesPage(),
        '/cart': (context) => CartPage(),
        '/profile': (context) => ProfilePage(
              nickname: "",
            ),
        //'/product_page': (context) => ProductPage(),
        '/products': (context) => Products(),
      },
    );
  }
}
