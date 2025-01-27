import 'package:restorantmenu/data/main_data.dart';

class Anayemek_Data {
  List<Main_Data> anayemekler = [
    Main_Data("Adana Kebap", "assets/adana.jpeg", 80,
        "Leziz bir adana kebap yemeğidir.", false),
    Main_Data("İskender", "assets/iskender.jpeg", 85,
        "Leziz bir iskender yemeğidir.", false),
    Main_Data(
        "Mantı", "assets/manti.jpeg", 60, "Leziz bir antı yemeğidir.", false),
    Main_Data("Karnıyarık", "assets/patlican.jpeg", 55,
        "Leziz bir karnıyarık yemeğidir.", false),
    Main_Data("Kuru fasulye", "assets/kuru.jpeg", 50,
        "Leziz bir kuru fasulye yemeğidir.", false),
  ];
}
