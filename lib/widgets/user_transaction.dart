import './transaction_list.dart';
import 'package:flutter/material.dart';

import './new_transaction.dart';
import '../models/transaction.dart';

class UserTransactios extends StatefulWidget {
  @override
  _UserTransactiosState createState() => _UserTransactiosState();
}

class _UserTransactiosState extends State<UserTransactios> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'bike',
      amount: 46.46,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'mobile',
      amount: 45.46,
      date: DateTime.now(),
    )
  ];

  void _addNewTransaction(String txTitle, double amount) {
    final newTx = Transaction(
      title: txTitle,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      NewTransaction(_addNewTransaction),
      TransactionList(_userTransaction),
    ]);
  }
}
