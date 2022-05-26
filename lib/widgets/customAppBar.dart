
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:hci_project/widgets/color.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';
import '../views/cart/cart_screen.dart';



class CartAppBar extends StatefulWidget {
  const CartAppBar({Key? key}) : super(key: key);

  @override
  _CartAppBarState createState() => _CartAppBarState();
}

class _CartAppBarState extends State<CartAppBar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 40,
        padding: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'أصيل',
                style: TextStyle(
                    color: pink, fontSize: 20, fontWeight: FontWeight.w700),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CartScreen()));
                },
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    const Icon(
                      Icons.shopping_cart_outlined,
                      color: black,
                      size: 35,
                    ),
                    Expanded(
                      child: Container(
                          child: Center(child:
                          Consumer<Cart>(builder: (context, Cart, child) {
                            return Text('${Cart.count}',
                                style: TextStyle(color: white));
                          })),
                          height: 17,
                          width: 17,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(100),
                          )),
                    ),
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
