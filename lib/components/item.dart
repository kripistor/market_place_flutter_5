import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.amber),
          width: double.infinity * 0.8,
          height: MediaQuery.of(context).size.height * 0.4,
          child: const Column(
            children: [
              Text("text"),
              Text("text"),
              Text("text"),
              Text("text"),
              Text("text")
            ],
          ),
        ));
  }
}
