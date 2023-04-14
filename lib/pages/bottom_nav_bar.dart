import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color.fromARGB(255, 161, 38, 38),
      unselectedItemColor: Color.fromARGB(255, 161, 38, 38),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Ana Sayfa',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Kategoriler',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorilerim',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Sepetim',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profilim',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            // Ana sayfa tıklandığında yapılacak işlemler
            Navigator.pushReplacementNamed(context, '/home');
            break;
          case 1:
            // Kategoriler tıklandığında yapılacak işlemler
            Navigator.pushReplacementNamed(context, '/categories');
            break;
          case 2:
            // Favorilerim tıklandığında yapılacak işlemler
            Navigator.pushReplacementNamed(context, '/favorites');
            break;
          case 3:
            // Sepetim tıklandığında yapılacak işlemler
            Navigator.pushReplacementNamed(context, '/cart');
            break;
          case 4:
            // Profilim tıklandığında yapılacak işlemler
            Navigator.pushReplacementNamed(context, '/profile');
            break;
        }
      },
    );
  }
}
