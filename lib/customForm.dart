import 'package:flutter/material.dart';

class CustomFormFeild extends StatelessWidget {
  String hint;

  CustomFormFeild(this.hint, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(20),
      // padding: EdgeInsets.all(1),
      child: TextFormField(
        style: TextStyle(
          fontSize: 22,
        ),
        decoration: InputDecoration(
            labelText: hint,
            labelStyle: TextStyle(fontSize: 22),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
                borderSide: BorderSide(width: 5, style: BorderStyle.solid),
                gapPadding: 20)),
      ),
    );
  }
}
