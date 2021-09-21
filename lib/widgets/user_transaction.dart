import './transaction_list.dart';
import 'package:flutter/material.dart';

import './new_transaction.dart';

class UserTransactios extends StatefulWidget {
  @override
  _UserTransactiosState createState() => _UserTransactiosState();
}

class _UserTransactiosState extends State<UserTransactios> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      NewTransaction(),
      TransactionList(),
    ]);
  }
}
