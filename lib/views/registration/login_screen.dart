
import 'package:flutter/material.dart';
import 'package:hci_project/views/registration/signup_screen.dart';
import 'package:hci_project/widgets/primary_button.dart';
import 'package:provider/provider.dart';

import '../../my_Style/My_Style.dart';
import '../../widgets/color.dart';
import '../../widgets/login_form.dart';
import '../../widgets/login_option.dart';
import 'forget _passward_screen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
            child:Directionality(
              textDirection: TextDirection.rtl,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
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
                          'سجل دخول الى حسابك',
                          style: subTitle,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LogInForm(),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResetPasswordScreen()));
                    },
                    child: Text(
                      'هل نسيت الرقم السرى؟',
                      style: TextStyle(
                        color: black,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                        decorationThickness: 1,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PrimaryButton(

                    buttonText: 'تسجيل الدخول',
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: Text(
                      'او سجل باستخدام',
                      style: subTitle.copyWith(color: pink),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  LoginOption(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [

                      Text(
                        'لا تمتلك حساب ؟',

                        style: subTitle,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SignUpScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'انشاء حساب',

                          style: textButton.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
  }