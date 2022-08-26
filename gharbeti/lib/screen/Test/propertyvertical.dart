import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gharbeti/controller/property_controller.dart';
import 'package:gharbeti/model/house.dart';
import 'package:gharbeti/model/property.dart';
import 'package:gharbeti/screen/detail/detail.dart';
import 'package:gharbeti/screen/detail/property_detail.dart';
import 'package:gharbeti/widget/circle_icon_button.dart';

class PropertyVerticalList extends StatefulWidget {
  const PropertyVerticalList({Key? key}) : super(key: key);

  @override
  State<PropertyVerticalList> createState() => _PropertyVerticalListState();
}

class _PropertyVerticalListState extends State<PropertyVerticalList> {
  PropertyController propertyController = Get.put(PropertyController());

  @override
  void initState() {
    super.initState();
    propertyController.getPropertyFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => propertyController.isDataLoading.value == true
            ? Center(child: CircularProgressIndicator.adaptive())
            : Container(
                height: 350,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    String? propertyCategories;
                    String? propertyTitle;
                    String? address;
                    String? status;
                    String? imgURL;
                    String? roadSize;
                    String? id;

                    try {
                      id = propertyController.propertyList!.data![i].id
                          .toString();
                      propertyTitle = propertyController
                          .propertyList!.data![i].attributes!.propertyTitle!;
                      propertyCategories = propertyController.propertyList!
                          .data![i].attributes!.propertyCategories!;
                      address = propertyController
                          .propertyList!.data![i].attributes!.address!;
                      status = propertyController
                          .propertyList!.data![i].attributes!.status!;
                      imgURL = propertyController
                          .propertyList!.data![i].attributes!.imageUrl!;
                      // roadSize =
                      //     '${propertyController.propertyList!.data![i].attributes!.roadSize!.roadSize} +${propertyController.propertyList!.data![i].attributes!.roadSize!.unit}';
                    } catch (e) {
                      propertyTitle = '';
                      propertyCategories = '';
                      address = '';
                      status = '';
                      imgURL = '';
                      roadSize = '';
                    }
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PropertyDetail(
                                      id: id,
                                      imgURL: imgURL,
                                      propertyTitle: propertyTitle,
                                      address: address,
                                      status: status,
                                    )));
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: GestureDetector(
                          onTap: () {
                            print('${propertyTitle} is Clicked');
                          },
                          child: Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  print('${propertyTitle} is Clicked');
                                },
                                child: Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        width: 150,
                                        height: 80,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(imgURL),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      children: [
                                        Text(
                                          propertyTitle,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1!
                                              .copyWith(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        SizedBox(height: 10),
                                        Text(
                                          address,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .copyWith(fontSize: 12),
                                        ),
                                        SizedBox(height: 10),
                                        Text(status),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              // Positioned(
                              //   right: 0,
                              //   child: CircleIconButton(
                              //     iconUrl: 'assets/icons/heart.svg',
                              //     color: Colors.grey,
                              //   ),
                              // )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (_, index) => SizedBox(width: 10),
                  itemCount: propertyController.propertyList!.data!.length,
                ),
              ),
      ),
    );
  }
}
