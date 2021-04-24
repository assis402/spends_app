import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spends_app/provider/cash_ins.dart';
import 'package:spends_app/routes/app_routes.dart';
import 'package:spends_app/views/cash_in_form.dart';
import 'package:spends_app/views/cash_in_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => CashIns(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          AppRoutes.HOME: (_) => CashInList(),
          AppRoutes.CASH_IN_FORM: (_) => CashInForm(),
        },
      ),
    );
  }
}
