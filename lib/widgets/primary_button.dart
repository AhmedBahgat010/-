
import 'package:flutter/material.dart';
import 'package:hci_project/widgets/color.dart';

import '../my_Style/My_Style.dart';
import '../views/home_page/view.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonText;
  PrimaryButton({required this.buttonText});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    HomePage()));
      },
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.of(context).size.height * 0.08,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: pink),
        child: Text(
          buttonText,
          style: textButton.copyWith(color: white),
        ),
      ),
    );
  }
}