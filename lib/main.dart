import 'package:flutter/material.dart';
import 'package:flutter_navigasi_rute/model/item.dart';
import 'package:flutter_navigasi_rute/page/home.dart';
import 'package:flutter_navigasi_rute/page/item_page.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ItemPage.routeName) {
          final args = settings.arguments as Item;
          return MaterialPageRoute(
            builder: (context) {
              return ItemPage(
                name: args.name,
                price: args.price,
                weight: args.weight,
              );
            },
          );
        }
        assert(false, '${settings.name}');
        return null;
      },
    );
  }
}