import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gharbeti/controller/property_controller.dart';
import 'package:gharbeti/model/house.dart';
import 'package:gharbeti/model/property.dart';
import 'package:gharbeti/screen/detail/detail.dart';
import 'package:gharbeti/widget/circle_icon_button.dart';

class PropertyList extends StatefulWidget {
  const PropertyList({Key? key}) : super(key: key);

  @override
  State<PropertyList> createState() => _PropertyListState();
}

class _PropertyListState extends State<PropertyList> {
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
                height: 280,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, i) {
                    String? propertyCategories;
                    String? propertyTitle;
                    String? address;
                    String? status;
                    String? imgURL;
                    String? roadSize;

                    try {
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
                        print('${propertyTitle} is Clicked');
                      },
                      child: Container(
                        width: 210,
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
                              Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(imgURL),
                                        fit: BoxFit.cover)),
                              ),
                              // Positioned(
                              //   right: 15,
                              //   top: 15,
                              //   child: CircleIconButton(
                              //       iconUrl: 'assets/icons/mark.svg',
                              //       color: Theme.of(context).accentColor),
                              // ),
                              Positioned(
                                  bottom: 0,
                                  left: 0,
                                  right: 0,
                                  child: Container(
                                    color: Colors.white54,
                                    padding: EdgeInsets.all(10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(propertyTitle,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .headline1!
                                                    .copyWith(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              address,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1!
                                                  .copyWith(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.bold),
                                            ),
                                            Text(status),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ))
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
