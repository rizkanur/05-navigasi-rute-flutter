import 'package:flutter/material.dart';
import '../widget/card.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({Key? key,
      required this.name,
      required this.price,
      required this.weight})
      : super(key: key);

  static const routeName = '/item';
  final String name;
  final int price;
  final int weight;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text('Shopping List - Rizka Nur Cahyani-2031710065'),
        ),
        body: Container(
          margin: const EdgeInsets.all(8),
          child: MyCard(name: name, price: price, weight: weight),
        ),
      ),
    );
  }
}