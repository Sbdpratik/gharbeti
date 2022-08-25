import 'dart:convert';

import 'package:get/get.dart';
import 'package:gharbeti/model/rental_details.dart';
import 'package:http/http.dart' as http;

class RentalController extends GetxController {
  RentalDetails? rentalDetailsList;
  var isDataLoading = false.obs;
  getRentalDetailsFromApi() async {
    try {
      isDataLoading(true);
      http.Response response = await http
          .get(Uri.parse("https://gharbeti8.herokuapp.com/api/rental-details"));
      // print(response.statusCode);
      if (response.statusCode == 200) {
        var result = jsonDecode(response.body);

        rentalDetailsList = RentalDetails.fromJson(result);
        // print(propertyList);
      } else {}
    } catch (e) {
      print("Error is $e");
    } finally {
      isDataLoading(false);
    }
  }
}
