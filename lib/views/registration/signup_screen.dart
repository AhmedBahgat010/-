
import 'package:flutter/material.dart';
import 'package:hci_project/widgets/color.dart';

import '../../my_Style/My_Style.dart';
import '../../widgets/checkbox.dart';
import '../../widgets/login_option.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/signup_form.dart';
import 'login_screen.dart';
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
Center(child: Image.asset('assets/logo.png',height: 250)),
              Center(
                child: Padding(
                  padding: kDefaultPadding,
                  child: Text(
                    'أصيل',
                    style: titleText,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width:MediaQuery.of(context).size.width,
                child: Center(
                  child: Padding(
                    padding: kDefaultPadding,
                    child: Text(
                      'أنشئ حسابك الأن',
                      style: subTitle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: kDefaultPadding,
                child: SignUpForm(),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [ Padding(
                  padding: kDefaultPadding,
                  child: CheckBox('مزارع'),
                ), Padding(
                  padding: kDefaultPadding,
                  child: CheckBox('تاجر'),
                ), Padding(
                  padding: kDefaultPadding,
                  child: CheckBox('مشترى'),
                ),],
              ),

              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: kDefaultPadding,
                child: PrimaryButton(buttonText: 'تسجيل الدخول'),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Padding(
                  padding: kDefaultPadding,
                  child: Text(
                    'او سجل باستخدام',
                    style: subTitle.copyWith(color:pink),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: kDefaultPadding,
                child: LoginOption(),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}