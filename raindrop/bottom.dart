import 'package:flutter/material.dart';
import 'package:raindrop/raindrop/cart.dart';
import 'package:raindrop/raindrop/productdetailes.dart';
import '../modals/Colours.dart';
import 'Home.dart';

class bottomNavigation extends StatefulWidget {
  const bottomNavigation({Key? key}) : super(key: key);

  @override
  State<bottomNavigation> createState() => _bottomNavigationState();
}

class _bottomNavigationState extends State<bottomNavigation> {
  int _selectedindex=0;
  final pages =[
    Homepage(),
    cartpage()
  ];

  void _itemtap(int index ){
    setState(() {
      _selectedindex = index ;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Container(decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.black,
            Colors.grey.shade900,
          ],
        )
    ),
      child: Scaffold(backgroundColor: Colors.transparent,
        body: pages[_selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: black,
          backgroundColor: Colors.white,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: black,),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: black,),label: 'Cart'),
          ],
          currentIndex: _selectedindex,
          onTap: _itemtap,
          showUnselectedLabels: true,
        ),
      ),
    ));
  }
}
