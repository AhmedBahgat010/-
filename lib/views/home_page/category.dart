import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


import '../../model/list.dart';
import '../../widgets/color.dart';

import '../View_drink_data/view_screen.dart';
import 'cons_menu.dart';

class Category extends StatefulWidget {
  const Category({Key? key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  //TODO:
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    //TODO:
    return Column(
      children: [
        Directionality(      textDirection: TextDirection.rtl,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 0;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 0 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 7,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/fruits.png'),
                        size: 70,
                        color: pageIndex == 0 ? white : black,
                      ),
                      Text(
                        'فواكة',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: pageIndex ==0? white : gray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 1;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 1 ? pink : white,
                      boxShadow: [
                        BoxShadow(
                          color: gray,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/vegetable.png'),
                        size: 65,
                        color: pageIndex == 1 ? white : black,
                      ),
                      Text(
                        'خضار',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: pageIndex == 1 ? white : gray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 2 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        const AssetImage('assets/wheat-sack.png'),
                        size: 65,
                        color: pageIndex ==2 ? white : black,
                      ),
                      Text(
                        'حبوب',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: pageIndex == 2 ? white : gray,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: Container(
                  width: 85,
                  height: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: pageIndex == 3 ? pink : white,
                      boxShadow: const [
                        BoxShadow(
                          color: gray,
                          blurRadius: 5,
                        )
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ImageIcon(
                        AssetImage('assets/fertilizer.png'),
                        size: 65,
                        color: pageIndex == 3 ? white : black,
                      ),
                      Text(
                        'أسمدة',
                        style: TextStyle(
                          fontSize: 18,
                          color: pageIndex == 3 ? white : gray,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          padding: EdgeInsets.all(10),
          itemCount: menu[pageIndex].length,
          itemBuilder: (_, index) {
            return ConMenu(
                image: menu[pageIndex][index].image,
                // color: menu[pageIndex][index].name,
                name: menu[pageIndex][index].name,
                subtitle:menu[pageIndex][index].descriptionDrink,
                price: menu[pageIndex][index].price, ontap: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Data_Drink(
                          items: menu[pageIndex][index],
                        ),
                  ));
            },);
          },
        ),
      ],
    );
  }
}
