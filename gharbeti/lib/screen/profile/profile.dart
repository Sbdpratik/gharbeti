import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:gharbeti/screen/home/widget/best_offer.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(4, 9, 35, 1),
                Colors.blueGrey,
              ],
              begin: FractionalOffset.bottomCenter,
              end: FractionalOffset.topCenter,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 73),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          AntDesign.arrowleft,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          AntDesign.logout,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 34,
                      fontFamily: 'Nisebuschgardens',
                    ),
                  ),
                  SizedBox(
                    height: 22,
                  ),
                  Container(
                    height: height * 0.43,
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        double innerHeight = constraints.maxHeight;
                        double innerWidth = constraints.maxWidth;
                        return Stack(
                          fit: StackFit.expand,
                          children: [
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Container(
                                height: innerHeight * 0.72,
                                width: innerWidth,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 80,
                                      ),
                                      Text(
                                        'Bikash Gupta',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(39, 105, 171, 1),
                                          fontFamily: 'Nunito',
                                          fontSize: 37,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text("gbikash34@gmail.com"),
                                          Text("Buddhanilkantha, Kathmandu"),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              Text(
                                                'Properties',
                                                style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontFamily: 'Nunito',
                                                  fontSize: 25,
                                                ),
                                              ),
                                              Text(
                                                '10',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      39, 105, 171, 1),
                                                  fontFamily: 'Nunito',
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 25,
                                              vertical: 8,
                                            ),
                                            child: Container(
                                              height: 50,
                                              width: 3,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(100),
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                'Rent',
                                                style: TextStyle(
                                                  color: Colors.grey[700],
                                                  fontFamily: 'Nunito',
                                                  fontSize: 25,
                                                ),
                                              ),
                                              Text(
                                                '1',
                                                style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      39, 105, 171, 1),
                                                  fontFamily: 'Nunito',
                                                  fontSize: 25,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 110,
                              right: 20,
                              child: GestureDetector(
                                onTap: () {
                                  Get.toNamed('/editprofile');
                                },
                                child: Icon(
                                  AntDesign.edit,
                                  color: Colors.grey[700],
                                  size: 30,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Center(
                                  child: Hero(
                                      tag: 'profile',
                                      child: CircleAvatar(
                                          radius: 80,
                                          backgroundImage: NetworkImage(
                                            "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250",
                                          )))
                                  // Container(
                                  //   child: Image.network(
                                  //     'https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250',
                                  //     width: innerWidth * 0.45,
                                  //     fit: BoxFit.fitWidth,
                                  //   ),
                                  // ),
                                  ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SingleChildScrollView(
                    child: Container(
                      height: height * 0.5,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'My Properties',
                                style: TextStyle(
                                  color: Color.fromRGBO(39, 105, 171, 1),
                                  fontSize: 27,
                                  fontFamily: 'Nunito',
                                ),
                              ),
                              Divider(
                                thickness: 2.5,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              BestOffer(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
