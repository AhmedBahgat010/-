import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'dart:core';

import '../../model/cart.dart';
import '../../model/item.dart';
import '../../my_Style/My_Style.dart';
import '../../widgets/color.dart';

class ContainerStak extends StatefulWidget {
  Item items;

  ContainerStak({required this.items});

  @override
  _ContainerStakState createState() => _ContainerStakState();
}

class _ContainerStakState extends State<ContainerStak> {
  int num = 1;
  List orderGet = [];

  // getOrder() async {
  //   QuerySnapshot querySnapshot =
  //       await FirebaseFirestore.instance.collection('orders').get();
  //
  //   for (var doc in querySnapshot.docs) {
  //     orderGet.add(
  //       Item(
  //           image: doc['image'],
  //           id: doc.id,
  //           name: doc['name'],
  //           descriptionDrink: doc['descriptionDrink'],
  //           price: doc['price']),
  //     );
  //   }
  //
  //   setState(() {});
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
// print(orderGet[0]['name']);
//  print(orderGet[0]);
//     getOrder();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
      height: MediaQuery.of(context).size.height / 1.4,
      width: sizeFromWidth(context, 1),
      decoration: const BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60), topRight: Radius.circular(60))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:Directionality(
              textDirection: TextDirection.rtl,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.items.name, style: pinkbold),
                  Text( '${widget.items.price} ج.م ', style: pinkbold),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 60,
                  width: 150,
                  decoration: BoxDecoration(
                    color: white,
                    border: Border.all(width: 3.0),
                    borderRadius: const BorderRadius.all(Radius.circular(
                            50.0) //                 <--- border radius here
                        ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.add, color: pink, size: 30),
                        onPressed: () {
                          setState(() {
                            ++num;
                          });
                        },
                      ),
                      Text('$num', style: grayContainerFont),
                      IconButton(
                        icon: const Icon(Icons.remove, color: pink, size: 30),
                        onPressed: () {
                          if (num > 1) {
                            setState(() {
                              --num;
                            });
                          }
                        },
                      ),
                    ],
                  )),
              Consumer<Cart>(builder: (context, Cart, child) {
                return InkWell(onTap: (){
                  Cart.add(widget.items);
                  Navigator.pop(context);
                },
                  child: Container(
              height: 60,
              width: 170,
              margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade400,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 2),
                  )
              ], color: pink, borderRadius: BorderRadius.circular(10)),
              child: const Center(
                    child: Text(
                  "Add To Cart",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w500,
                      color: white),
              )),
                  ),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }
}
