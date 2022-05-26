// ignore_for_file: camel_case_types


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../model/item.dart';
import '../../widgets/color.dart';
import 'StakContainer.dart';

class Data_Drink extends StatefulWidget {
  Item items;

  Data_Drink({required this.items});

  @override
  _Data_DrinkState createState() => _Data_DrinkState();
}

class _Data_DrinkState extends State<Data_Drink> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: Stack(
                  //alignment: Alignment.bottomCenter,
                  children: [
                    Container(
                      height: 300,
                      decoration: BoxDecoration(
                        color: pink,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(height: 180,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                           fit:BoxFit.fitHeight ,
                            image: AssetImage("assets/${widget.items.image}"),
                            alignment: Alignment.center,
                            scale: 6.0,
                          ))),
                        ),
                      ),
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: ContainerStak(
                          items: widget.items,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
