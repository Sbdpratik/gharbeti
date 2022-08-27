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
                    String? price;
                    String? price_label;
                    String? description;
                    String? area;
                    String? ownername;
                    String? ownerphone;
                    String? id;
                    String? unit;
                    String? bedroom;
                    String? kitchen;
                    String? bathroom;
                    String? livingroom;
                    String? parking;

                    try {
                      bedroom = propertyController
                          .propertyList!.data![i].attributes!.noOfRoom!.bedrooms
                          .toString();
                      kitchen = propertyController
                          .propertyList!.data![i].attributes!.noOfRoom!.kitchens
                          .toString();
                      livingroom = propertyController.propertyList!.data![i]
                          .attributes!.noOfRoom!.livingroom
                          .toString();
                      parking = propertyController
                          .propertyList!.data![i].attributes!.noOfRoom!.parking
                          .toString();
                      bathroom = propertyController
                          .propertyList!.data![i].attributes!.noOfRoom!.bathroom
                          .toString();
                      unit = propertyController
                          .propertyList!.data![i].attributes!.totalArea!.units;
                      ownerphone = propertyController.propertyList!.data![i]
                          .attributes!.ownerDetails!.ownerPhone;
                      ownername = propertyController.propertyList!.data![i]
                          .attributes!.ownerDetails!.ownerName;
                      area = propertyController
                          .propertyList!.data![i].attributes!.totalArea!.area
                          .toString();
                      description = propertyController.propertyList!.data![i]
                          .attributes!.description!.description;
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
                      price = propertyController
                          .propertyList!.data![i].attributes!.price!.price
                          .toString();
                      price_label = propertyController
                          .propertyList!.data![i].attributes!.price!.priceLabel;
                      roadSize =
                          '${propertyController.propertyList!.data![i].attributes!.roadSize!.roadSize} ${propertyController.propertyList!.data![i].attributes!.roadSize!.unit}';
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
                                      description: description,
                                      price: price,
                                      price_label: price_label,
                                      area: area,
                                      unit: unit,
                                      roadSize: roadSize,
                                      bedroom: bedroom,
                                      bathroom: bathroom,
                                      kitchen: kitchen,
                                      parking: parking,
                                      livingroom: livingroom,
                                      ownername: ownername,
                                      ownerphone: ownerphone,
                                    )));
                      },
                      child: Container(
                        width: 210,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
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
                                          Text('Rs ${price} ${price_label}'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ))
                          ],
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
