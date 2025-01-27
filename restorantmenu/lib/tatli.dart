import 'package:flutter/material.dart';
import 'package:restorantmenu/data/tatli_data.dart';
import 'package:restorantmenu/widget.dart';

class Tatli extends StatelessWidget {
  const Tatli({super.key});

  @override
  Widget build(BuildContext context) {
    final tatli = Tatli_Data();
    return Scaffold(
      appBar: NewAppbar(title: "Tatlı"),
      body: NewColumn(items: tatli.tatlilar),
    );
  }
}
