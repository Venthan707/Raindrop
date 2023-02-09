import 'package:flutter/material.dart';

class can {
  String image,text;

  can(this.image,this.text);
}

List canlist = modeldata.map((e)=>can(e['image']!,e['text']!)).toList();

var modeldata = [
  {'image': 'assets/can/20.png','text':'20 Litre'},
  {'image': 'assets/can/10.png','text':'10 Litre'},
  {'image': 'assets/can/5.png','text':'5 Litre'},
  {'image': 'assets/can/2.5.png','text':'2.5 Litre'},
  {'image': 'assets/can/1.png','text':'1 Litre'},
  {'image': 'assets/can/500.png','text':'500 ML'},
];

class water {
  String image,text,text1;

  water(this.image,this.text,this.text1);
}

List waterlist = modeldata0.map((e)=>water(e['image']!,e['text']!,e['text1']!)).toList();

var modeldata0= [
  {'image': 'assets/water can/a.jpg','text':'2010','text1':"Aachi"},
  {'image': 'assets/water can/al.jpg','text':'2015','text1':"Alkalen"},
  {'image': 'assets/water can/aq.jpg','text':'2012','text1':"Aquafina"},
  {'image': 'assets/water can/ba.png','text':'2010','text1':"Bailley"},
  {'image': 'assets/water can/bi.png','text':'2007','text1':"Bisleri"},
  {'image': 'assets/water can/ev.jpg','text':'2017','text1':"Evian"},
  {'image': 'assets/water can/k.jpg','text':'2013','text1':"Kinley"},
  {'image': 'assets/water can/sw.png','text':'2020','text1':"Smartwater"},

];


class home {
  String image;

  home(this.image);
}

List homelist = modeldata1.map((e)=>home(e['image']!)).toList();

var modeldata1 = [
  {'image': 'assets/home page/1.jpeg'},
  {'image': 'assets/home page/2.jpeg'},
  {'image': 'assets/home page/3.jpeg'},
  {'image': 'assets/home page/4.jpeg'},
  {'image': 'assets/home page/5.jpg'},
  {'image': 'assets/home page/6.jpg'},

];