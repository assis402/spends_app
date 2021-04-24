import 'package:spends_app/models/cash_in_category.dart';
import 'package:spends_app/models/cash_in.dart';

const DUMMY_CASHIN = {
  '1': const CashIn(
    id: '1',
    description: 'Salário',
    value: 1400.00,
    category: CashInCategory.wage,
  ),
  '2': const CashIn(
    id: '2',
    description: 'Rendimentos da minha loja online',
    value: 500.00,
    category: CashInCategory.other,
  ),
  '3': const CashIn(
    id: '3',
    description: 'Rendimentos Canal no Youtube',
    value: 100.00,
    category: CashInCategory.other,
  ),
};
