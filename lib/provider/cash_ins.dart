import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:spends_app/data/dummy_cashin.dart';
import 'package:spends_app/models/cash_in.dart';

class CashIns with ChangeNotifier {
  final Map<String, CashIn> _items = {...DUMMY_CASHIN};

  List<CashIn> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  CashIn byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(CashIn cashIn) {
    if (cashIn == null) {
      return;
    }

    if (cashIn.id != null &&
        cashIn.id.trim().isNotEmpty &&
        _items.containsKey(cashIn.id)) {
      _items.update(cashIn.id, (_) => cashIn);
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
          id,
          () => CashIn(
                id: id,
                description: cashIn.description,
                value: cashIn.value,
                category: cashIn.category,
              ));
    }
    notifyListeners();
  }

  void remove(CashIn cashIn) {
    if (cashIn != null && cashIn.id != null) {
      _items.remove(cashIn.id);
      notifyListeners();
    }
  }
}
