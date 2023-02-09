import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:raindrop/modals/Colours.dart';
import 'package:raindrop/modals/image.dart';
import 'package:raindrop/modals/textstyle.dart';
import 'package:raindrop/raindrop/cart.dart';
import 'package:raindrop/raindrop/productdetailes.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: blueGrey,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.drag_handle_sharp,
              color: black,
              size: 25,
            ),
          ),
          backgroundColor: white,
          centerTitle: true,
          title: Text(
            "Raindrop",
            style: size27black,
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
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>cartpage()));
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
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(25)),
                  color: white,
                ),
                child: Container(
                  height: 225,
                  child: CarouselSlider.builder(
                      itemCount: homelist.length,
                      itemBuilder: (context, index, realindex) {
                        return Container(
                          height: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image: AssetImage(
                                  homelist[index].image,
                                ),
                                fit: BoxFit.fill,
                              )),
                        );
                      },
                      options: CarouselOptions(
                        aspectRatio: 2,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                //color: white,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: waterlist.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>productdetailpage()));},
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Card(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),image: DecorationImage(image: AssetImage(waterlist[index].image,),fit: BoxFit.fill,)),
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            waterlist[index].text1,
                            style: size16black,
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text("since : ", style: size12blue),
                              Text(waterlist[index].text, style: size12blue),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 25.0, left: 25),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: black, width: 1),
                      borderRadius: BorderRadius.circular(5),
                      color: white70),
                  height: 40,
                  width: 350,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        size: 25,
                        color: black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Select your location...")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0, left: 25),
                child: Container(
                  height: 300,
                  child: GridView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: canlist.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 20,
                        childAspectRatio: .7),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>productdetailpage()));
                        },
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(25),
                                  bottomLeft: Radius.circular(25)),
                              color: white70,
                            ),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                    height: 90,
                                    child: Image.asset(
                                      canlist[index].image,
                                      fit: BoxFit.fill,
                                    )),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  canlist[index].text,
                                  style: size16black,
                                )
                              ],
                            )),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
