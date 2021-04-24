import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spends_app/provider/cash_ins.dart';
import 'package:spends_app/routes/app_routes.dart';
import '../components/cash_in_tile.dart';

class CashInList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CashIns cashIns = Provider.of(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Entradas'),
        ),
        body: ListView.builder(
          itemCount: cashIns.count,
          itemBuilder: (ctx, i) => CashInTile(cashIns.byIndex(i)),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed(AppRoutes.CASH_IN_FORM);
          },
          child: const Icon(Icons.add),
        ));
  }
}
