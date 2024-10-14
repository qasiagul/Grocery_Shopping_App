import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
  class ItemBottomBar extends StatelessWidget {
    const ItemBottomBar({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        height: 80,
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){},
              child: Container(
                height: 60,
                width: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xfff7ca0f),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  CupertinoIcons.cart_fill,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            GestureDetector(
              onTap: (){},
              child: Container(
                height:60,
                width: 220,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xfff7ca0f),
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Text(
                  "Buy Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                    letterSpacing: 1
                  ),
                )
              ),
            ),
          ],
        ),
      );
    }
  }
