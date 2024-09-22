import 'package:flutter/material.dart';
import 'package:market_place_flutter_e/pages/product_detail.dart';
import '../models/product_model.dart';
import '../components/item.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text('Market Place', style: TextStyle(color: Colors.black))),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailPage(product: products[index]),
                ),
              );
            },
            child: Item(product: products[index]),
          );
        },
      ),
    );
  }
}
