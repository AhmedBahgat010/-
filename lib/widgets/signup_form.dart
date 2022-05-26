import 'package:flutter/material.dart';

import 'color.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildInputForm('البريد الاليكترونى', false),
        buildInputForm('الرقم السرى', true),
        buildInputForm('رقم الهاتق', false),
        buildInputForm('البلد', false),
      ],
    );
  }

  Padding buildInputForm(String hint, bool pass) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(color: gray),
            focusedBorder:
                UnderlineInputBorder(borderSide: BorderSide(color: pink)),
            suffixIcon: pass
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        _isObscure = !_isObscure;
                      });
                    },
                    icon: _isObscure
                        ? Icon(
                            Icons.visibility_off,
                            color: gray,
                          )
                        : Icon(
                            Icons.visibility,
                            color: pink,
                          ))
                : null,
          ),
        ));
  }
}
