import 'package:flutter/material.dart';
import 'package:restorantmenu/anayemek.dart';

import 'corba.dart';
import 'icecek.dart';
import 'tatli.dart';

class Catagories {
  static List<Map<String, String>> catagories = [
    {"name": "Çorba", "imagePath": "assets/corba.webp"},
    {"name": "Ana Yemek", "imagePath": "assets/anayemek.jpg"},
    {"name": "Tatlı", "imagePath": "assets/tatli.png"},
    {"name": "İçecekler", "imagePath": "assets/icecek.jpg"}
  ];

  static Map<String, Widget Function()> catagoryClasses = {
    "Çorba": () => Corba(),
    "Tatlı": () => Tatli(),
    "İçecekler": () => Icecek(),
    "Ana Yemek": () => Anayemek()
  };
}
