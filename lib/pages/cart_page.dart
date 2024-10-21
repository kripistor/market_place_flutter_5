import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../models/cart_model.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(cart[index].name),
            subtitle: Text('${cart[index].price} рублей'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_circle),
              onPressed: () {
                setState(() {
                  cart.removeAt(index);
                });
              },
            ),
          );
        },
      ),
    );
  }
}