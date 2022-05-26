import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../widgets/color.dart';
class ConMenu extends StatelessWidget {
  String image;
  String name;
  String subtitle;
  num price;
  final Function ontap;
  // Color color;
  ConMenu({
    required this.image,
    required this.name,
    required this.subtitle,
    required this.price, required this.ontap,
    // required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,

      child: InkWell(
        onTap: (){ontap();},
        child: Container(
          margin: EdgeInsets.all(2),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(8),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: pinkclear,
                  image: DecorationImage(image: AssetImage('assets/$image'))
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500,height: 1.5),
                    ),
                    Text(subtitle, style: TextStyle(fontSize: 16,height: 1.5,color: gray)),
                    Text("${price}", style: TextStyle(fontSize: 18,height: 1.5,color: pink,fontWeight: FontWeight.w500)),
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
