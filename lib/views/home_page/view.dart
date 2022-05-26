import 'package:flutter/material.dart';

import '../../widgets/color.dart';
import '../../widgets/customAppBar.dart';
import 'category.dart';
import 'offers.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(100), child: CartAppBar()),
        backgroundColor: white,
      body: ListView(
        children: [
          CarouselDemo(),
          Category(),
          //Items(),
        ],
      ),
    );
  }
}
