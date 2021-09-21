import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((e) {
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
