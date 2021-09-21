import 'dart:developer';

import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        TextField(
            controller: titleController,
            decoration: InputDecoration(
              focusColor: Colors.redAccent,
              labelText: 'Title',
            ),
            autocorrect: true,
            keyboardType: TextInputType.number,
            maxLength: 5,
            onChanged: (val) {
              //titleInput = val;
            }),
        TextField(
          controller: nameController,
          decoration: InputDecoration(
            focusColor: Colors.redAccent,
            labelText: 'Name',
          ),
          autocorrect: true,
          keyboardType: TextInputType.number,
          maxLength: 5,
          onChanged: (val) {
            //nameInput = val;
          },
        ),
        FlatButton(
          color: Colors.amberAccent,
          onPressed: () {
            log(titleController.text);
          },
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ]),
    );
  }
}
