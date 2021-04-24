import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spends_app/models/cash_in.dart';
import 'package:spends_app/provider/cash_ins.dart';
import 'package:spends_app/routes/app_routes.dart';

class CashInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _form = GlobalKey<FormState>();
    final Map<String, String> _formData = {};

    return Scaffold(
      appBar: AppBar(
        title: Text('Nova Entrada'),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _form,
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Descrição'),
                validator: (value) {
                  return 'erro';
                },
                onSaved: (value) => _formData['description'] = value,
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Valor'),
                validator: (value) {
                  return 'erro';
                },
                onSaved: (value) => _formData['value'] = value,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          bool isValid = true; //_form.currentState.validate();

          if (isValid) {
            _form.currentState.save();

            Provider.of<CashIns>(context).put(
              CashIn(
                id: _formData['id'],
                description: _formData['discription'],
                value: _formData['value'],
              ),
            );

            Navigator.of(context).pop();
          }
        },
        child: const Icon(Icons.check_outlined),
      ),
    );
  }
}
// piquitao <3 segura essa fitbank seus piquitao
