import 'package:flutter/cupertino.dart';
import 'package:spends_app/models/cash_in_category.dart';

class CashIn {
  final String id;
  final String description;
  final double value;
  final CashInCategory category;

  const CashIn({
    this.id,
    @required this.description,
    @required this.value,
    @required this.category,
  });
}
