import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final bottomBarItem = ['home', 'chat', 'plus', 'notification', 'home_mark'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 25),
      padding: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        SvgPicture.asset(
          'assets/icons/home.svg',
          color: Theme.of(context).primaryColor,
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed('/postproperty');
          },
          child: SvgPicture.asset(
            'assets/icons/plus.svg',
            color: Theme.of(context).primaryColor,
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed('rentalreport');
          },
          child: SvgPicture.asset(
            'assets/icons/report.svg',
            color: Theme.of(context).primaryColor,
          ),
        ),
      ]),
      //     bottomBarItem
      // .map((e) => SvgPicture.asset(
      //       'assets/icons/$e.svg',
      //       color: Theme.of(context).primaryColor,
      //     ))
      // .toList()),
    );
  }
}
