import 'package:flutter/material.dart';
import 'package:restorantmenu/data/icecek_data.dart';
import 'package:restorantmenu/widget.dart';

class Icecek extends StatelessWidget {
  const Icecek({super.key});

  @override
  Widget build(BuildContext context) {
    final icecek = Icecek_Data();
    return Scaffold(
      appBar: NewAppbar(title: "İçecek"),
      body: NewColumn(items: icecek.icecekler),
    );
  }
}
