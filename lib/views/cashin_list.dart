import 'package:flutter/material.dart';
import 'package:spends_app/data/dummy_cashin.dart';

class CashInList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const cashIns = {...DUMMY_CASHIN};

    return Scaffold(
      appBar: AppBar(
        title: Text('Entradas'),
      ),
      body: ListView.builder(
        itemCount: cashIns.length,
        itemBuilder: (ctx, i) => Text(cashIns.values.elementAt(i).title),
      ),
    );
  }
}
