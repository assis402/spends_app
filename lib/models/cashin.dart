import 'package:flutter/cupertino.dart';

class CashIn {
  final String id;
  final String title;
  final double value;
  final String description;

  const CashIn({
    this.id,
    @required this.title,
    @required this.value,
    this.description,
  });
}
