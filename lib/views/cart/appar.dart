import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/color.dart';


Widget Appar_Cart() {
  return SafeArea(
    child: Container(
      height: 40,
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
           Text(
            'التسوق ',
            style: TextStyle(
                color: pink,
                fontSize: 26,
                fontWeight: FontWeight.w700
            ),
          ),


        ],
      ),
    ),
  );
}
