import 'package:flutter/material.dart';
import 'package:kas_personal/models/kas.dart';

class Kasprovider extends ChangeNotifier  {
  List<Kas> _items = [];

  List<Kas> get items => _items;

  void tambah(Kas kas) {
    _items.add(kas);
    notifyListeners();
  }

  void hapus(Kas kas) {
    _items.remove(kas);
    notifyListeners();
  }

}