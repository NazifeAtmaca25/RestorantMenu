import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:restorantmenu/data/sepet_data.dart';
import 'package:restorantmenu/home_page.dart';

void main() => runApp(ChangeNotifierProvider<Sepet_Data>(
    create: (BuildContext context) {
      return Sepet_Data();
    },
    child: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Restorant Menüsü",
      home: HomePage(),
    );
  }
}
