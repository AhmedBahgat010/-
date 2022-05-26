
import 'package:flutter/material.dart';

import 'color.dart';
class ResetForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'البريد الالكترونى',
            hintStyle: TextStyle(color:black),
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: pink))),
      ),
    );
  }
}