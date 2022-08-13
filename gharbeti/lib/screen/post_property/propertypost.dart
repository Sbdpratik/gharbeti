import 'package:flutter/material.dart';

class PostProperty extends StatefulWidget {
  const PostProperty({Key? key}) : super(key: key);

  @override
  _PostPropertyState createState() => _PostPropertyState();
}

class _PostPropertyState extends State<PostProperty> {
  int _activeStepIndex = 0;
  String propertyType = "Residental";
  String propertyCategory = "Room";
  String defaultRoadType = 'Gravelled';

  // List of items in our dropdown menu
  var roadType = [
    'Gravelled',
    'Soil-stabilized',
    'Paved',
    'Blacktopped',
    'Alley',
  ];
  TextEditingController propertyTitle = TextEditingController();
  TextEditingController roadSize = TextEditingController();
  TextEditingController roadDist = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController builtYear = TextEditingController();
  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('Property Details'),
          content: Container(
            child: Column(
              children: [
                Text('Property Type:'),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Radio(
                        autofocus: true,
                        value: "Residental",
                        groupValue: propertyType,
                        onChanged: (val) {
                          setState(() {
                            propertyType = val as String;
                          });
                        }),
                    Text("Residental"),
                    Radio(
                        value: "Commercial",
                        groupValue: propertyType,
                        onChanged: (val) {
                          setState(() {
                            propertyType = val as String;
                          });
                        }),
                    Text("Commercial"),
                  ],
                ),
                SizedBox(height: 2),
                Text('Property Categories:'),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Radio(
                        value: "House",
                        groupValue: propertyCategory,
                        onChanged: (val) {
                          setState(() {
                            propertyCategory = val as String;
                          });
                        }),
                    Text("House"),
                    Radio(
                        value: "Land",
                        groupValue: propertyCategory,
                        onChanged: (val) {
                          setState(() {
                            propertyCategory = val as String;
                          });
                        }),
                    Text("Land"),
                    Radio(
                        value: "Flat",
                        groupValue: propertyCategory,
                        onChanged: (val) {
                          setState(() {
                            propertyCategory = val as String;
                          });
                        }),
                    Text("Flat"),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Radio(
                          value: "Business",
                          groupValue: propertyCategory,
                          onChanged: (val) {
                            setState(() {
                              propertyCategory = val as String;
                            });
                          }),
                      Text("Business"),
                      Radio(
                          value: "Apt.& Housing",
                          groupValue: propertyCategory,
                          onChanged: (val) {
                            setState(() {
                              propertyCategory = val as String;
                            });
                          }),
                      Text("Apt. & Housing"),
                      Radio(
                          value: "Room",
                          groupValue: propertyCategory,
                          onChanged: (val) {
                            setState(() {
                              propertyCategory = val as String;
                            });
                          }),
                      Text("Room"),
                    ],
                  ),
                ),
                SizedBox(height: 2),
                TextField(
                  controller: propertyTitle,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Property Title',
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                TextField(
                  controller: address,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Address',
                  ),
                ),
              ],
            ),
          ),
        ),
        Step(
            state:
                _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
            isActive: _activeStepIndex >= 1,
            title: const Text('Property Background'),
            content: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextField(
                    controller: roadSize,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Road Size',
                    ),
                  ),
                  DropdownButton(
                    // Initial Value
                    value: defaultRoadType,

                    // Down Arrow Icon
                    icon: const Icon(Icons.keyboard_arrow_down),

                    // Array list of items
                    items: roadType.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    // After selecting the desired option,it will
                    // change button value to selected value
                    onChanged: (String? newValue) {
                      setState(() {
                        defaultRoadType = newValue!;
                      });
                    },
                  ),
                ],
              ),
            )),
        Step(
            state: StepState.complete,
            isActive: _activeStepIndex >= 2,
            title: const Text('Submit'),
            content: Container(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Property Type: ${propertyType}'),
                Text('Property Category: ${propertyCategory}'),
                Text('Property Title: ${propertyTitle.text}'),
                Text('Address : ${address.text}'),
                Text('Road Size : ${roadSize.text}'),
                Text('Road Type : ${defaultRoadType}'),
              ],
            )))
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post Property'),
      ),
      body: Stepper(
        type: StepperType.vertical,
        currentStep: _activeStepIndex,
        steps: stepList(),
        onStepContinue: () {
          if (_activeStepIndex < (stepList().length - 1)) {
            setState(() {
              _activeStepIndex += 1;
            });
          } else {
            print('Submited');
          }
        },
        onStepCancel: () {
          if (_activeStepIndex == 0) {
            return;
          }
          setState(() {
            _activeStepIndex -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeStepIndex = index;
          });
        },
      ),
    );
  }
}
