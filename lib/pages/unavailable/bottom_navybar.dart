/*import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'pages/profile_page.dart';

class BottomNavB extends StatefulWidget {
  @override
  _BottomNavBState createState() => _BottomNavBState();
}

class _BottomNavBState extends State<BottomNavB> {
  int _currentIndex = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: <Widget>[
            Container(
              color: Colors.blueGrey,
              child: ElevatedButton(
                child: Text('Ana Sayfa'),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/home');
                },
              ),
            ),
            Container(
              color: Colors.red,
              child: ElevatedButton(
                child: Text(' '),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/categories');
                },
              ),
            ),
            Container(
              color: Colors.green,
              child: ElevatedButton(
                child: Text(' '),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/favorites');
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                child: Text(' '),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/cart');
                },
              ),
              color: Colors.blue,
            ),
            Container(
              child: ElevatedButton(
                child: Text(' '),
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/profile');
                },
              ),
              color: Colors.blue,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
        itemCornerRadius: 24,
        curve: Curves.easeIn,
        //onItemSelected: (index) => setState(() => _currentIndex = index),
        items: <BottomNavyBarItem>[
          BottomNavyBarItem(
            icon: Icon(Icons.home_filled),
            title: Text('Ana Sayfa'),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.category_outlined),
            title: Text('Kategoriler'),
            activeColor: Color.fromARGB(255, 64, 80, 251),
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.favorite),
            title: Text(
              'Favorilerim',
            ),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text('Sepetim'),
            activeColor: Colors.lightGreen,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
            activeColor: Colors.blue,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}*/
