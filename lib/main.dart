import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shopping_app/pages/cart_page.dart';
import 'package:grocery_shopping_app/pages/home_page.dart';
import 'package:grocery_shopping_app/pages/item_page.dart';
import 'package:grocery_shopping_app/pages/order_page.dart';

void main() {
  runApp(const MyApp());
}

  class MyApp extends StatefulWidget {
    const MyApp({Key? key}) : super(key: key);
  
    @override
    State<MyApp> createState() => _MyAppState();
  }
  
  class _MyAppState extends State<MyApp> {
   @override
    void initState(){
     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
     super.initState();
   }

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Color(0xfff7f5fb)
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/" :(context) => HomePage(),
          "itemPage" :(context) => ItemPage(),
          "cartPage" :(context) => CartPage(),
          "orderPage" :(context) => OrderPge(),
        },
      );
    }
  }
  