import 'package:flutter/material.dart';
import 'package:spends_app/routes/app_routes.dart';

import '../models/cash_in.dart';

class CashInTile extends StatelessWidget {
  final CashIn cashIn;

  const CashInTile(this.cashIn);

  @override
  Widget build(BuildContext context) {
    final figure = CircleAvatar(
      child: Icon(Icons.attach_money_outlined),
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
    );
    return ListTile(
      leading: figure,
      title: Text(cashIn.value.toString(), textScaleFactor: 1.1),
      subtitle: Text(cashIn.description),
      trailing: Container(
        width: 100,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.remove_circle),
              onPressed: () {
                Navigator.of(context).pushNamed(
                  AppRoutes.CASH_IN_FORM,
                  arguments: cashIn,
                );
              },
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}
