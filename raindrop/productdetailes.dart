import 'package:flutter/material.dart';

import '../modals/Colours.dart';
import '../modals/textstyle.dart';
import 'cart.dart';

class productdetailpage extends StatefulWidget {
  const productdetailpage({Key? key}) : super(key: key);

  @override
  State<productdetailpage> createState() => _productdetailpageState();
}

class _productdetailpageState extends State<productdetailpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: blueGrey50,
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back_sharp,
                color: black,
                size: 25,
              ),
            ),
            backgroundColor: white,
            centerTitle: false,
            title: Text(
              "Product details",
              style: size20black,
            ),
            actions: [
              CircleAvatar(
                radius: 22,
                backgroundColor: lime,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_on_outlined,
                      size: 28,
                      color: black,
                    )),
              ),
              SizedBox(
                width: 5,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => cartpage()));
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 25,
                    color: black,
                  ))
            ],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [

                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Container(
                      height: 250,
                      child: Image.asset("assets/6.png"),
                    ),
                  ),
                ),
                Text(
                  "Aquafina",
                  style: size20black,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "20 L",
                  style: size17black,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(color: lightBlue, width: 1),
                      borderRadius: BorderRadius.circular(5),
                      color: white70),
                  child: Center(
                      child: Text(
                        "₹ 75",
                        style: size16black,
                      )),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Classification",
                            style: size20gray,
                          ),
                          Text(
                            "Drinking Water",
                            style: size16black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Source",
                            style: size20gray,
                          ),
                          Text(
                            "Detroit River",
                            style: size16black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Country",
                            style: size20gray,
                          ),
                          Text(
                            "India",
                            style: size16black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Hardness",
                            style: size20gray,
                          ),
                          Text(
                            "Monetary Hard",
                            style: size16black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "productnumber",
                            style: size20gray,
                          ),
                          Text(
                            "707808",
                            style: size16black,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      width: 350,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(width: 150,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(lightBlue)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>cartpage()));
                      },
                      child: Text(
                        "Add to cart",
                        style: size16black,
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
