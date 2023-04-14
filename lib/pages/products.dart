import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'bottom_nav_bar.dart';
import 'product_detail.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class Product {
  final String name;
  final String image;
  final double price;
  final double star;

  const Product({
    required this.name,
    required this.image,
    required this.price,
    required this.star,
  });
}

class _ProductsState extends State<Products> {
  final List<Product> products = [
    Product(
        name: 'elbise1',
        price: 100,
        image: '/images/products/elbise1.jpg',
        star: 4.3),
    Product(
        name: 'elbise2',
        price: 400,
        image: '/images/products/elbise2.jpg',
        star: 4.5),
    Product(
        name: 't-shirt1',
        price: 150,
        image: '/images/products/t_shirt1.jpg',
        star: 3.9),
    Product(
        name: 't-shirt2',
        price: 120,
        image: '/images/products/t_shirt2.jpg',
        star: 4.2),
    Product(
        name: 'ceket1',
        price: 600,
        image: '/images/products/ceket1.jpg',
        star: 4.7),
    Product(
        name: 'ceket2',
        price: 800,
        image: '/images/products/ceket2.jpg',
        star: 4.3),
    Product(
        name: 'ayakkabı1',
        price: 400,
        image: '/images/products/ayakkabi1.jpg',
        star: 4.1),
    Product(
        name: 'ayakkabı2',
        price: 500,
        image: '/images/products/ayakkabi2.jpg',
        star: 4.8),
    Product(
        name: 'pant1',
        price: 100,
        image: '/images/products/pant1.jpg',
        star: 4.3),
    Product(
        name: 'pant2',
        price: 100,
        image: '/images/products/pant2.jpg',
        star: 4.3),
    Product(
        name: 'kaban1',
        price: 100,
        image: '/images/products/kaban1.jpg',
        star: 4.3),
    Product(
        name: 'kaban2',
        price: 100,
        image: '/images/products/kaban2.jpg',
        star: 4.3),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 161, 38, 38),
        title: Text('Ürünler'),
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 0.7,
        ),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetail(product: products[index]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    products[index].image,
                    width: 300,
                    height: 300,
                  ),
                  Text(products[index].name,
                      style: const TextStyle(fontSize: 20)),
                  Text(products[index].price.toString() + " ₺"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(products[index].star.toString()),
                      Icon(Icons.star_rounded, color: Colors.yellow),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
