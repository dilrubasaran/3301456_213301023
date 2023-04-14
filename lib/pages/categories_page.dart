import 'package:flutter/material.dart';
import '/pages/bottom_nav_bar.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Column(
            children: <Widget>[
              ListView(shrinkWrap: true, children: <Widget>[
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/products'),
                  title: Text('Pantolon'),
                  subtitle: Text('İstediğiniz gibi bir pantolon bulun'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/products'),
                  title: Text('T-shirt'),
                  subtitle: Text('size uygun bir t-shirt bulun'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/products'),
                  title: Text('Elbise'),
                  subtitle: Text(''),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/products'),
                  title: Text('Ceket'),
                  subtitle: Text('Tarzınıza uygun ceketi aramaya başlayın'),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/products'),
                  title: Text('Kaban'),
                  subtitle: Text(''),
                ),
                ListTile(
                  onTap: () => Navigator.pushNamed(context, '/products'),
                  title: Text('Ayakkabı'),
                  subtitle: Text(''),
                ),
              ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
