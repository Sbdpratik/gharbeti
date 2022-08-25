import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:gharbeti/controller/property_controller.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Obx(
          () => propertyController.isDataLoading.value == true
              ? Center(child: CircularProgressIndicator.adaptive())
              : ListView.builder(
                  itemBuilder: (context, i) {
                    String property_title = '';

                    try {
                      property_title = propertyController
                          .propertyList!.data[i].attributes.propertyTitle;
                    } catch (e) {
                      property_title = '';
                    }

                    return Text(property_title);
                  },
                  itemCount: propertyController.propertyList!.data.length,
                ),
        ),
      ),
    );
  }
}
