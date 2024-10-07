import 'package:flutter/material.dart';

class Dialoguebox extends StatelessWidget {
  final controller;
  VoidCallback onSave;

  Dialoguebox({super.key, required this.controller,required this.onSave});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("TO DO LIST"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      backgroundColor: Colors.blue[50],
      content: Container(
        height: 140,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              cursorColor: Colors.blue,
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Add a new task",
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blue,
                  )
                )
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.red[400],
                ),
                MaterialButton(
                  onPressed: onSave,
                  child: Text(
                    "Save",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.green[400],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
