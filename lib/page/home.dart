import 'package:flutter/material.dart';
import 'package:flutter_navigasi_rute/widget/listview.dart';
import 'package:flutter_navigasi_rute/model/item.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Sugar', price: 9000, weight: 500),
    Item(name: 'Salt', price: 1500, weight: 200),
    Item(name: 'Flour', price: 15500, weight: 1000),
    Item(name: 'Chili', price: 6000, weight: 100),
    Item(name: 'Onion', price: 8000, weight: 250),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List | Rizka Nur Cahyani-2031710065"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: MyListView(
          items: items,
          page: '/item',
        ),
      ));
  }
}