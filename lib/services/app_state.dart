import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  String categorie = "general";
  void updateCategorie(String newCategorie) {
    categorie = newCategorie;
    notifyListeners();
  }
}
