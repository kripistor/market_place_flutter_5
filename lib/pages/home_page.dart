import 'package:flutter/material.dart';

import '../components/item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>['A', 'B', 'E'];
    final List<int> colorCodes = <int>[600, 500, 100];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Заголовок"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
            itemCount: 33,
            itemBuilder: (BuildContext context, int index) {
              return const Item();
            }),
      ),
    );
  }
}
