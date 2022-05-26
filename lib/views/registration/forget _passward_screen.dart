
import 'package:flutter/material.dart';
import 'package:hci_project/views/registration/payment_screen.dart';

import '../../my_Style/My_Style.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/reset_form.dart';
import 'login_screen.dart';
class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: kDefaultPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 250,
              ),
              Text(
                'استرجاع الرقم السرى',
                style: titleText,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'ادخل البريد الالكترونى الخاص بك',
                style: subTitle.copyWith(fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              ResetForm(),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => paymentScreen(                                                           ),
                        ));
                  },
                  child: PrimaryButton(buttonText: 'استرجاع الرقم السرى')),
            ],
          ),
        ),
      ),
    );
  }
}