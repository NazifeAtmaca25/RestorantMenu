import 'package:flutter/material.dart';
import 'package:restorantmenu/data/corba_data.dart';
import 'package:restorantmenu/widget.dart';

class Corba extends StatelessWidget {
  const Corba({super.key});

  @override
  Widget build(BuildContext context) {
    final corba = Corba_Data();
    return Scaffold(
      appBar: NewAppbar(title: "Çorba"),
      body: NewColumn(items: corba.corbalar),
    );
  }
}
