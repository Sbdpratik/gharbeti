import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WelcomeText extends StatelessWidget {
  var username = 'Bikash';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello',
            style: Theme.of(context)
                .textTheme
                .bodyText1!
                .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Find your sweet Home',
                style: Theme.of(context)
                    .textTheme
                    .headline1!
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              GestureDetector(
                  onTap: () {
                    Get.toNamed('/search');
                  },
                  child: SvgPicture.asset('assets/icons/search.svg')),
            ],
          )
        ],
      ),
    );
  }
}
