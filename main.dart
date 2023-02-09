import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:raindrop/modals/textstyle.dart';
import 'package:raindrop/raindrop/bottom.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,widget)=> ResponsiveWrapper.builder(
          ClampingScrollWrapper.builder(context, widget!),
          maxWidth: 1700,
          minWidth: 350,
          defaultScale: true,
          breakpoints: const [ResponsiveBreakpoint.autoScale(350,name: MOBILE),
            ResponsiveBreakpoint.autoScale(1000,name: TABLET),
            ResponsiveBreakpoint.autoScale(1200,name: DESKTOP),
            ResponsiveBreakpoint.autoScale(1700, name: 'XL')
          ]
      ),
debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
          duration: 50,
          splash: Row(
            children: [
              SizedBox(
                height: 200,
                  width:150,
                  child: Image.asset("assets/drop.JPG",fit: BoxFit.fill,)),
              Text("Raindrop",style: size20black,)
            ],
          ),
          nextScreen: bottomNavigation(),
          backgroundColor: Colors.white),
    );
  }
}

