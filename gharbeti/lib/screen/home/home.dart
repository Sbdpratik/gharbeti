import 'package:flutter/material.dart';
import 'package:gharbeti/screen/Test/propertytestlist.dart';
import 'package:gharbeti/screen/Test/propertyvertical.dart';
import 'package:gharbeti/screen/home/widget/best_offer.dart';
import 'package:gharbeti/screen/home/widget/categories.dart';
import 'package:gharbeti/screen/home/widget/custom_app_bar.dart';
import 'package:gharbeti/screen/home/widget/custom_bottom_navigation_bar.dart';
import 'package:gharbeti/screen/home/widget/recommended_house.dart';
import 'package:gharbeti/screen/home/widget/search_input.dart';
import 'package:gharbeti/screen/home/widget/welcome_text.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WelcomeText(),
            // SearchInput(),
            // Categories(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Property',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   'See All',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyText1!
                  //       .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  // ),
                ],
              ),
            ),
            PropertyList(),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Best offer',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  // Text(
                  //   'See All',
                  //   style: Theme.of(context)
                  //       .textTheme
                  //       .bodyText1!
                  //       .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                  // ),
                ],
              ),
            ),
            PropertyVerticalList(),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
