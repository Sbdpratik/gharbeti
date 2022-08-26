import 'dart:convert';

import 'package:get/get.dart';
import 'package:gharbeti/model/property.dart';
import 'package:http/http.dart' as http;

class PropertyController extends GetxController {
  Property? propertyList;
  var isDataLoading = false.obs;
  getPropertyFromApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http.get(Uri.parse(
          "https://gharbeti8.herokuapp.com/api/properties?populate=*"));
      // print(response.statusCode);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);
        print(result);
        propertyList = Property.fromJson(result);
        // print(propertyList);
      } else {}
    } catch (e) {
      print("Error is $e");
    } finally {
      isDataLoading(false);
    }
  }
}
