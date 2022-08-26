import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class PropertyDetail extends StatelessWidget {
  final String? id;
  final String? imgURL;
  final String? propertyTitle;
  final String? status;
  final String? address;
  final String? roadSize;
  final String? price;
  final String? price_label;
  final String? description;
  final String? area;
  final String? ownername;
  final String? ownerphone;
  final String? unit;
  const PropertyDetail(
      {Key? key,
      this.id,
      this.imgURL,
      this.propertyTitle,
      this.address,
      this.status,
      this.roadSize,
      this.price,
      this.price_label,
      this.description,
      this.area,
      this.unit,
      this.ownername,
      this.ownerphone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Property Details")),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 400,
              child: Stack(
                children: [
                  Image.network(
                    imgURL!,
                    fit: BoxFit.cover,
                    height: double.infinity,
                  ),
                  SafeArea(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.of(context).pop();
                        //   },
                        //   child: Container(
                        //     height: 20,
                        //     width: 20,
                        //     padding: EdgeInsets.all(5),
                        //     decoration: BoxDecoration(
                        //         color: Colors.grey, shape: BoxShape.circle),
                        //     child: SvgPicture.asset('assets/icons/arrow.svg'),
                        //   ),
                        // ),
                        // Container(
                        //   height: 20,
                        //   width: 20,
                        //   padding: EdgeInsets.all(5),
                        //   decoration: BoxDecoration(
                        //       color: Theme.of(context).accentColor,
                        //       shape: BoxShape.circle),
                        //   child: SvgPicture.asset('assets/icons/mark.svg'),
                        // )
                      ],
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(propertyTitle!,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    address!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '${area} ${unit}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: 'Rs ${price}',
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: price_label,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 14),
                      )
                    ]),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      MenuInfo(
                          imageUrl: 'assets/icons/bedroom.svg',
                          content: '5 Bedroom\n3 Master Bedroom'),
                      MenuInfo(
                          imageUrl: 'assets/icons/bathroom.svg',
                          content: '5 Bathroom\n3 Toilet'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      MenuInfo(
                          imageUrl: 'assets/icons/kitchen.svg',
                          content: '2 Kitchen\n120 sqft'),
                      MenuInfo(
                          imageUrl: 'assets/icons/parking.svg',
                          content: '2 Parking\n120 sqft'),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    description!,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(fontSize: 14),
                  )
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  primary: Theme.of(context).primaryColor,
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Text(
                    'Inquiry Now',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import 'package:gharbeti/controller/property_controller.dart';

// class PropertyDetail extends StatefulWidget {
//   final String? id;
//   final String? imgURL;
//   final String? propertyTitle;
//   final String? status;
//   final String? address;
//   const PropertyDetail(
//       {Key? key,
//       this.id,
//       this.imgURL,
//       this.propertyTitle,
//       this.address,
//       this.status})
//       : super(key: key);

//   @override
//   State<PropertyDetail> createState() => _PropertyDetailState();
// }

// class _PropertyDetailState extends State<PropertyDetail> {
//   PropertyController propertyController = Get.put(PropertyController());

//   @override
//   void initState() {
//     super.initState();
//     propertyController.getPropertyFromApi();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 400,
//               child: Stack(
//                 children: [
//                   Image.network(
//                     imgURL,
//                     fit: BoxFit.cover,
//                     height: double.infinity,
//                   ),
//                   SafeArea(
//                       child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 20, vertical: 10),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).pop();
//                           },
//                           child: Container(
//                             height: 20,
//                             width: 20,
//                             padding: EdgeInsets.all(5),
//                             decoration: BoxDecoration(
//                                 color: Colors.grey, shape: BoxShape.circle),
//                             child: SvgPicture.asset('assets/icons/arrow.svg'),
//                           ),
//                         ),
//                         Container(
//                           height: 20,
//                           width: 20,
//                           padding: EdgeInsets.all(5),
//                           decoration: BoxDecoration(
//                               color: Theme.of(context).accentColor,
//                               shape: BoxShape.circle),
//                           child: SvgPicture.asset('assets/icons/mark.svg'),
//                         )
//                       ],
//                     ),
//                   ))
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(propertyTitle,
//                       style: Theme.of(context)
//                           .textTheme
//                           .headline1!
//                           .copyWith(fontSize: 20, fontWeight: FontWeight.bold)),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     address,
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyText1!
//                         .copyWith(fontSize: 14),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     '5000 sqft',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyText1!
//                         .copyWith(fontSize: 14),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   RichText(
//                     text: TextSpan(children: [
//                       TextSpan(
//                           text: '\$4455 ',
//                           style: Theme.of(context)
//                               .textTheme
//                               .headline1!
//                               .copyWith(
//                                   fontSize: 16, fontWeight: FontWeight.bold)),
//                       TextSpan(
//                         text: 'Per Month',
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyText1!
//                             .copyWith(fontSize: 14),
//                       )
//                     ]),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       MenuInfo(
//                           imageUrl: 'assets/icons/bedroom.svg',
//                           content: '5 Bedroom\n3 Master Bedroom'),
//                       MenuInfo(
//                           imageUrl: 'assets/icons/bathroom.svg',
//                           content: '5 Bathroom\n3 Toilet'),
//                     ],
//                   ),
//                   SizedBox(height: 10),
//                   Row(
//                     children: [
//                       MenuInfo(
//                           imageUrl: 'assets/icons/kitchen.svg',
//                           content: '2 Kitchen\n120 sqft'),
//                       MenuInfo(
//                           imageUrl: 'assets/icons/parking.svg',
//                           content: '2 Parking\n120 sqft'),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 20),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'About',
//                     style: Theme.of(context)
//                         .textTheme
//                         .headline1!
//                         .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     'Enum veniam dolor sint ipsum culpa magna dolor incididunt laborum excepteu...',
//                     style: Theme.of(context)
//                         .textTheme
//                         .bodyText1!
//                         .copyWith(fontSize: 14),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 25),
//             Container(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8)),
//                   primary: Theme.of(context).primaryColor,
//                 ),
//                 child: Container(
//                   alignment: Alignment.center,
//                   padding: EdgeInsets.symmetric(vertical: 15),
//                   child: Text(
//                     'Inquiry Now',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

class MenuInfo extends StatelessWidget {
  final String imageUrl;
  final String content;
  const MenuInfo({Key? key, required this.imageUrl, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Row(
          children: [
            SvgPicture.asset(imageUrl),
            SizedBox(width: 20),
            Text(
              content,
              style:
                  Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12),
            )
          ],
        ),
      ),
    );
  }
}
