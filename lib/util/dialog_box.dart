import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do/util/buttons.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow,
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task",
            ),
          ),

          //buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //save button
              MyButtons(text: "Save", onPressed: onSave),

              //cancel button
              MyButtons(text: "Cancel", onPressed: onCancel),
            ],
          )
        ]),
      ),
    );
  }
}
