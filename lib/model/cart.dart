import 'package:flutter/cupertino.dart';

import 'item.dart';
class Cart with ChangeNotifier {
  List<Item> _items = [];
  double _price = 0.0;
  void add(Item item) {
    if (_items.contains(item)) {

      print('item is not found');
      print('000000000000000000000000000000000000000000000000000000000000000');
    }
    else{
      print('item is found');
      print('000000000000000000000000000000000000000000000000000000000000000');
    }
    _price += item.price;      _items.add(item);
    notifyListeners();
  }
  void remove(Item item) {

    _price -= item.price;      _items.remove(item);
    notifyListeners();
  }
  get count {
    return _items.length;
  }

  double get allPrice {
    return _price;
  }
  List<Item> get newOrder {
    return _items;
  }
}
