import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final _titleController = TextEditingController();
  DateTime _selectedDate;
  final _nameController = TextEditingController();

  void _submitData() {
    if (_titleController.text.isEmpty || _nameController.text.isEmpty) {
      return;
    } else {
      final enteredTitle = _titleController.text;
      final enteredAmount = double.parse(_nameController.text);
      if (enteredTitle.isEmpty ||
          enteredAmount.isNaN ||
          enteredAmount.isNegative ||
          enteredAmount <= 0 ||
          _selectedDate == null) {
        log('io Errror');
      } else {
        widget.addTx(
          _titleController.text,
          double.parse(_nameController.text),
          _selectedDate,
        );
        Navigator.of(context).pop();
      }
    }
  }

  void _presentDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Column(children: <Widget>[
          TextField(
              controller: _titleController,
              decoration: InputDecoration(
                focusColor: Colors.redAccent,
                labelText: 'Title',
              ),
              autocorrect: true,
              onSubmitted: (_) => _submitData(),
              keyboardType: TextInputType.number,
              maxLength: 5,
              onChanged: (val) {
                //titleInput = val;
              }),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              focusColor: Colors.redAccent,
              labelText: 'Amount',
            ),
            autocorrect: true,
            keyboardType: TextInputType.number,
            maxLength: 5,
            onSubmitted: (_) => _submitData(),
            onChanged: (val) {
              //nameInput = val;
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(_selectedDate == null
                  ? 'No Date choosen'
                  : 'Picked date: ${DateFormat.yMd().format(_selectedDate)}'),
              TextButton(
                onPressed: _presentDatePicker,
                child: Text(
                  'Pick Date',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          ElevatedButton(
            // color: Colors.amberAccent,
            onPressed: _submitData,
            child: Text(
              'Add Transaction',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ]),
      ),
    );
  }
}
