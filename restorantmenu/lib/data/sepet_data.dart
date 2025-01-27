import 'package:flutter/cupertino.dart';
import 'package:restorantmenu/data/main_data.dart';

class Sepet_Data with ChangeNotifier {
  List<Main_Data> sepet = [];

  void addMenu(Main_Data data) {
    if (data.isSelect == false) {
      sepet.add(data);
      data.isSelect = true;
    }
    notifyListeners();
  }

  void deleteMenu(Main_Data data, int index) {
    sepet.removeAt(index);
    data.isSelect = false;
    notifyListeners();
  }

  List<Main_Data> getdata() {
    return sepet;
  }
}
