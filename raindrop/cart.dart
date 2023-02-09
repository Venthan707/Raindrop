import 'package:flutter/material.dart';
import 'package:raindrop/raindrop/Home.dart';
import 'package:raindrop/raindrop/bottom.dart';

import '../modals/Colours.dart';
import '../modals/textstyle.dart';

class cartpage extends StatefulWidget {
  const cartpage({Key? key}) : super(key: key);

  @override
  State<cartpage> createState() => _cartpageState();
}

class _cartpageState extends State<cartpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: blueGrey,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomNavigation()));
          },
          icon: Icon(
            Icons.arrow_back_sharp,
            color: black,
            size: 25,
          ),
        ),
        backgroundColor: white,
        title: Text(
          "Your Cart",
          style: size20black,
        ),
        actions: [
          Center(
              child: Text(
            "clear cart",
            style: size12black,
          )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.remove_shopping_cart_outlined,
                size: 25,
                color: Colors.red,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add_shopping_cart,
                size: 25,
                color: black,
              ))
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 230,
          ),
          Center(
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.teal.shade100,
              child: Icon(
                Icons.shopping_cart_checkout,
                size: 70,
                color: black,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "your cart is Empty",
            style: size16black,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Let's fill it by shopping new items",
            style: size12black,
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.teal)),
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>bottomNavigation()));
              },
              child: Text(
                "START SHOPPING",
                style: size16black,
              ))
        ],
      ),
    ));
  }
}
