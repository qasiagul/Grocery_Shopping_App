import 'package:flutter/material.dart';

  class CartBottomBar extends StatelessWidget {
    const CartBottomBar({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 130,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                 color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 5,
            )
          ]
        ),
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.discount,
                    color: Color(0xffFF8608),
                  ),
                  Text(
                    "Use Promo Coupons",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(162, 0, 0, 0),
                    ),
                  )
                ],
              ),
            ),
            Divider(thickness: 1, height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Total",
                      style: TextStyle(
                        fontSize: 23,
                        color: Color.fromARGB(162, 0, 0, 0),
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 8,),
                    Text(
                      "\$120",
                      style: TextStyle(
                        fontSize: 21,
                        color: Color(0xffff8608),
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, "orderPage");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xffff8608),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      "Check Out",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      );
    }
  }
