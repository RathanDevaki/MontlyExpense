import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
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
  @override
  Widget build(BuildContext context) {
    return Column(
      children: _userTransaction.map((e) {
        return Card(
          elevation: 8.0,
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.amberAccent,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8.0)),
                  child: Text(
                    e.title + '\t\t',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
                Text(e.id),
                Text('\$ ${e.amount}'),
                Text(DateFormat().format(e.date)),
              ],
            ),
          ),
        );
      }).toList(),
      //color: Colors.white10,
    );
  }
}
