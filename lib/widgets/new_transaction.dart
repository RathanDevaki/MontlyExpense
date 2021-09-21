import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final nameController = TextEditingController();
  NewTransaction(this.addTx);

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
            labelText: 'Amount',
          ),
          autocorrect: true,
          keyboardType: TextInputType.number,
          maxLength: 5,
          onChanged: (val) {
            //nameInput = val;
          },
        ),
        ElevatedButton(
          // color: Colors.amberAccent,
          onPressed: () {
            // log(titleController.text);
            addTx(
              titleController.text,
              double.parse(nameController.text),
            );
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
