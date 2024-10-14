import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

  class HomeBottomBar extends StatelessWidget {
    const HomeBottomBar({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 115,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                 children: [
                   Icon(
                     Icons.home,
                     color: Color(0xfff7ca0f),
                     size: 32,
                   ),
                   Text(
                     "Home",
                     style: TextStyle(
                         color: Color(0xfff7ca0f),
                         fontSize: 16,
                         fontWeight: FontWeight.bold
                     ),
                   ),
                 ],
               ),
            Column(
              children: [
                Icon(
                  Icons.search,
                  color: Color(0xfff7ca0f),
                  size: 32,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                      color: Color(0xfff7ca0f),
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: (){
                Navigator.pushNamed(context, "cartPage");
              },
              child: Column(
                children: [
                  Icon(
                    CupertinoIcons.cart,
                    color: Color(0xfff7ca0f),
                    size: 32,
                  ),
                  Text(
                    "My Cart",
                    style: TextStyle(
                        color: Color(0xfff7ca0f),
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  color: Color(0xfff7ca0f),
                  size: 32,
                ),
                Text(
                  "Account",
                  style: TextStyle(
                      color: Color(0xfff7ca0f),
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
  }
