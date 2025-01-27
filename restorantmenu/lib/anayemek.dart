import 'package:flutter/material.dart';
import 'package:restorantmenu/data/anayemek_data.dart';
import 'package:restorantmenu/widget.dart';

class Anayemek extends StatelessWidget {
  const Anayemek({super.key});

  @override
  Widget build(BuildContext context) {
    final anayemek = Anayemek_Data();
    return Scaffold(
      appBar: NewAppbar(title: "Ana Yemek"),
      body: NewColumn(items: anayemek.anayemekler),
    );
  }
}
