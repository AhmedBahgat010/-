import 'package:flutter/material.dart';
import 'package:hci_project/views/home_page/view.dart';
import 'package:hci_project/views/registration/login_screen.dart';
import 'package:hci_project/views/splac.dart';
import 'package:provider/provider.dart';

import 'model/cart.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return Cart();
      },
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
      ),
    );
  }
}
