import 'package:restorantmenu/data/main_data.dart';

class Tatli_Data {
  List<Main_Data> tatlilar = [
    Main_Data("Baklava", "assets/baklava.jpeg", 40,
        "Cevizli ve şerbetli tatlı.", false),
    Main_Data("Künefe", "assets/kunefe.jpeg", 45,
        "İçinde eritilmiş peynir olan Hatay tatlısı.", false),
    Main_Data("Sütlaç", "assets/sutlac.jpeg", 25,
        "Fırında pişirilmiş nefis sütlaç.", false),
    Main_Data("Kazandibi", "assets/kazandibi.jpeg", 30,
        "Tatlıların karamel kokan şahı.", false),
    Main_Data("Profiterol", "assets/profiterol.jpeg", 35,
        "Çikolata soslu kremalı tatlı.", false),
  ];
}
