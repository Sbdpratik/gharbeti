import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gharbeti/controller/rental_controller.dart';

class RentalReport extends StatefulWidget {
  const RentalReport({Key? key}) : super(key: key);

  @override
  State<RentalReport> createState() => _RentalReportState();
}

class _RentalReportState extends State<RentalReport> {
  RentalController rentalController = Get.put(RentalController());

  @override
  void initState() {
    super.initState();
    rentalController.getRentalDetailsFromApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rental Report"),
      ),
      body: Obx(
        () => rentalController.isDataLoading.value == true
            ? Center(child: CircularProgressIndicator.adaptive())
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SingleChildScrollView(
                  child: DataTable(
                    sortColumnIndex: 0,
                    columns: const <DataColumn>[
                      DataColumn(
                        label: Text(
                          'Date',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Rent',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Electricity',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Water',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Solar',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Internet',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Sanitation',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Extra',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Total',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Previous Balance',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Received Amount',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Received Date',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Balance',
                          style: TextStyle(fontStyle: FontStyle.italic),
                        ),
                      ),
                    ],
                    rows: rentalController.rentalDetailsList!.data!
                        .map((data) => DataRow(cells: [
                              DataCell(Text(data.attributes!.date!)),
                              DataCell(Text(data.attributes!.rent.toString())),
                              DataCell(Text(
                                  data.attributes!.electricity.toString())),
                              DataCell(Text(data.attributes!.water.toString())),
                              DataCell(Text(data.attributes!.solar.toString())),
                              DataCell(
                                  Text(data.attributes!.internet.toString())),
                              DataCell(
                                  Text(data.attributes!.sanitation.toString())),
                              DataCell(Text(data.attributes!.solar.toString())),
                              DataCell(Text(data.attributes!.total.toString())),
                              DataCell(Text(
                                  data.attributes!.previousBalance.toString())),
                              DataCell(Text(
                                  data.attributes!.receivedAmt.toString())),
                              DataCell(Text(data.attributes!.receivedDate!)),
                              DataCell(
                                  Text(data.attributes!.balance.toString())),
                            ]))
                        .toList(),
                  ),
                ),
              ),
      ),
    );
  }
}
