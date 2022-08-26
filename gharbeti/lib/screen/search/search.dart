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

class SearchList extends StatefulWidget {
  const SearchList({Key? key}) : super(key: key);

  @override
  State<SearchList> createState() => _SearchListState();
}

class _SearchListState extends State<SearchList> {
  PropertyController propertyController = Get.put(PropertyController());
  TextEditingController searchController = TextEditingController();
  String search = '';
  @override
  void initState() {
    super.initState();
    propertyController.getPropertyFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Property")),
      body: Container(
        child: Obx(
          () => propertyController.isDataLoading.value == true
              ? Center(child: CircularProgressIndicator.adaptive())
              : SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        controller: searchController,
                        decoration: InputDecoration(
                            hintText: 'Search for AnyThing',
                            border: const OutlineInputBorder()),
                        onChanged: (String? value) {
                          print(value);
                          setState(() {
                            search = value.toString();
                          });
                        },
                      ),
                      Container(
                        height: 500,
                        child: ListView.separated(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemBuilder: (context, i) {
                            String? id;
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
                            String? unit;

                            try {
                              unit = propertyController.propertyList!.data![i]
                                  .attributes!.totalArea!.units;
                              ownerphone = propertyController
                                  .propertyList!
                                  .data![i]
                                  .attributes!
                                  .ownerDetails!
                                  .ownerPhone;
                              ownername = propertyController.propertyList!
                                  .data![i].attributes!.ownerDetails!.ownerName;
                              area = propertyController.propertyList!.data![i]
                                  .attributes!.totalArea!.area
                                  .toString();
                              description = propertyController
                                  .propertyList!
                                  .data![i]
                                  .attributes!
                                  .description!
                                  .description;
                              propertyTitle = propertyController.propertyList!
                                  .data![i].attributes!.propertyTitle!;
                              propertyCategories = propertyController
                                  .propertyList!
                                  .data![i]
                                  .attributes!
                                  .propertyCategories!;
                              address = propertyController
                                  .propertyList!.data![i].attributes!.address!;
                              status = propertyController
                                  .propertyList!.data![i].attributes!.status!;
                              imgURL = propertyController
                                  .propertyList!.data![i].attributes!.imageUrl!;
                              price = propertyController.propertyList!.data![i]
                                  .attributes!.price!.price
                                  .toString();
                              price_label = propertyController.propertyList!
                                  .data![i].attributes!.price!.priceLabel;
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
                                            )));
                              },
                              child: Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Stack(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                                                      fontWeight:
                                                          FontWeight.bold),
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
                                            Text('Rs ${price} ${price_label} '),
                                          ],
                                        ),
                                      ],
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
                            );
                          },
                          separatorBuilder: (_, index) => SizedBox(width: 10),
                          itemCount:
                              propertyController.propertyList!.data!.length,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
