
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../model/cart.dart';
import '../../my_Style/My_Style.dart';
import '../../widgets/color.dart';
import 'appar.dart';
import 'container_cart_shopping.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  num total = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Appar_Cart(),
      ),
      body:   Consumer<Cart>(builder: (context, Cart, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child:  Cart.allPrice != 0 ? SingleChildScrollView(
              child:  Column(
                children: [
                  Container(
                    width: sizeFromWidth(context, 1),
                    child:
              ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          padding: const EdgeInsets.all(10),
                          itemCount:Cart.newOrder.length,
                          itemBuilder: (_, index) {

                            return ContainerNeworder(
                              image: Cart.newOrder[index].image,
                              // color: cart.newOrder[index].color,
                              name: Cart.newOrder[index].name,
                              subtitle:  Cart.newOrder[index].descriptionDrink,
                              price: Cart.newOrder[index].price,
                              onPressed: () {
                                Cart.remove(Cart.newOrder[index]);
                                // data[index].reference.delete();
                                // cart.remove(cart.newOrder[index]);
                              },
                            );

                    }),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 60,
                        width: sizeFromWidth(context, 1.2),
                        child: Center(
                          child:
                     Text(
                              'المجموع :    ${Cart.allPrice}ج.م  ',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w500,
                                  color: white),
                            ),

                        ),
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 2),
                              )
                            ],
                            color: pink,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              ),
        ) : SizedBox(
            height: sizeFromHeight(context, 1.2),
            child: Center(
              child: Image.asset('assets/empty-cart.png',
                  height: 3000),
            ),
          ),
        ) ;
      }
      )


      );
  }
}
