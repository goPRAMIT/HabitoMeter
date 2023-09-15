import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[800],
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.amber)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.amber)),
        ),
      ),
      actions: [
        Row(
          children: [
            MaterialButton(
              onPressed: onSave,
              child: Text(
                "Save",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            ),
            MaterialButton(
              onPressed: onCancel,
              child: Text(
                "Cancel",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.black,
            ),
          ],
        ),
        // MaterialButton(
        //   onPressed: onCancel,
        //   child: Text(
        //     "Cancel",
        //     style: TextStyle(color: Colors.white),
        //   ),
        //   color: Colors.black,
        // ),
      ],
    );
  }
}
