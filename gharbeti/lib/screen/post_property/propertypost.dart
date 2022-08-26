import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostProperty extends StatefulWidget {
  const PostProperty({Key? key}) : super(key: key);

  @override
  _PostPropertyState createState() => _PostPropertyState();
}

class _PostPropertyState extends State<PostProperty> {
  int _activeStepIndex = 0;
  String propertyType = "Residental";
  String propertyCategory = "Room";
  String selectedRoadType = 'Gravelled';
  String selectedRoadUnit = 'ft';
  String selectedRoadDistUnit = 'ft';
  String selectedFurnishing = 'UnFurnished';
  String selectedAreaUnit = 'Aana';
  String selectedBuiltArea = 'Aana';
  String selectedPropertyFace = 'East';
  String selectedBedroom = '0';
  String selectedKitchen = '0';
  String selectedLivingroom = '0';
  String selectedBathroom = '0';
  String selectedParking = '0';
  String selectedPriceLabel = 'per-month';

  // List of items in our dropdown menu
  var roadUnit = [
    'ft',
    'm',
  ];
  var roadDistUnit = [
    'ft',
    'm',
  ];
  var roadType = [
    'Gravelled',
    'Soil-stabilized',
    'Paved',
    'Blacktopped',
    'Alley',
  ];
  var propertyFace = [
    'East',
    'West',
    'North',
    'South',
    'North-East',
    'North-West',
    'South-West',
    'South-East',
  ];

  var Rooms = [
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];

  var furnishing = [
    'Full-Furnished',
    'Semi-Furnished',
    'UnFurnished',
  ];

  var priceLabel = [
    'per-Aana',
    'per-month',
    'per-Square-feet',
    'per-Square-meter',
    'per-Ropani',
    'per-Bigha',
    'per-Kattha',
    'per-Haat',
    'per-Dhur',
    'per-Acres',
  ];

  var areaUnit = [
    'Aana',
    'Square-feet',
    'Square-meter',
    'Ropani',
    'Bigha',
    'Kattha',
    'Haat',
    'Dhur',
    'Acres',
  ];

  bool air_conditioner = true;
  bool Security = true;
  bool Parking = false;
  bool WiFi = false;
  bool Balcony = false;
  bool Water_supply = true;
  bool Gym = false;
  bool Swimming_pool = true;
  bool Tv_Cable = false;
  bool Laundry = false;
  bool Lift = false;
  bool Fire_Place = false;
  bool Garden = false;
  bool Solar = false;
  bool Modular_kitchen = true;
  bool Drainage = false;
  bool Public_Transport = false;
  bool General_Store = false;
  bool negotiable = true;

  onChangeFunction1(bool newValue1) {
    setState(() {
      air_conditioner = newValue1;
    });
  }

  onChangeFunction2(bool newValue1) {
    setState(() {
      Security = newValue1;
    });
  }

  onChangeFunction3(bool newValue1) {
    setState(() {
      Parking = newValue1;
    });
  }

  onChangeFunction4(bool newValue1) {
    setState(() {
      WiFi = newValue1;
    });
  }

  onChangeFunction5(bool newValue1) {
    setState(() {
      Balcony = newValue1;
    });
  }

  onChangeFunction6(bool newValue1) {
    setState(() {
      Water_supply = newValue1;
    });
  }

  onChangeFunction7(bool newValue1) {
    setState(() {
      Gym = newValue1;
    });
  }

  onChangeFunction8(bool newValue1) {
    setState(() {
      Swimming_pool = newValue1;
    });
  }

  onChangeFunction9(bool newValue1) {
    setState(() {
      Tv_Cable = newValue1;
    });
  }

  onChangeFunction10(bool newValue1) {
    setState(() {
      Laundry = newValue1;
    });
  }

  onChangeFunction11(bool newValue1) {
    setState(() {
      Lift = newValue1;
    });
  }

  onChangeFunction12(bool newValue1) {
    setState(() {
      Fire_Place = newValue1;
    });
  }

  onChangeFunction13(bool newValue1) {
    setState(() {
      Garden = newValue1;
    });
  }

  onChangeFunction14(bool newValue1) {
    setState(() {
      Solar = newValue1;
    });
  }

  onChangeFunction15(bool newValue1) {
    setState(() {
      Modular_kitchen = newValue1;
    });
  }

  onChangeFunction16(bool newValue1) {
    setState(() {
      Drainage = newValue1;
    });
  }

  onChangeFunction17(bool newValue1) {
    setState(() {
      Public_Transport = newValue1;
    });
  }

  onChangeFunction18(bool newValue1) {
    setState(() {
      General_Store = newValue1;
    });
  }

  onChangeFunction19(bool newValue1) {
    setState(() {
      negotiable = newValue1;
    });
  }

  TextEditingController propertyTitle = TextEditingController();
  TextEditingController roadSize = TextEditingController();
  TextEditingController roadDist = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController builtYear = TextEditingController();
  TextEditingController totalfloor = TextEditingController();
  TextEditingController totalArea = TextEditingController();
  TextEditingController builtArea = TextEditingController();
  TextEditingController ownerName = TextEditingController();
  TextEditingController ownerPhone = TextEditingController();
  TextEditingController price = TextEditingController();
  TextEditingController description = TextEditingController();
  TextEditingController imgURL = TextEditingController();
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
          state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
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
                Row(
                  children: [
                    DropdownButton(
                      // Initial Value
                      value: selectedRoadUnit,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: roadUnit.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedRoadUnit = newValue!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedRoadType,

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
                          selectedRoadType = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                TextField(
                  controller: roadDist,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Distance from Main Road',
                  ),
                ),
                DropdownButton(
                  // Initial Value
                  value: selectedRoadDistUnit,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: roadDistUnit.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedRoadDistUnit = newValue!;
                    });
                  },
                ),
                TextField(
                  controller: builtYear,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Built Year (e.g 2020 AD)',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: totalfloor,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Total Floor',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton(
                  // Initial Value
                  value: selectedFurnishing,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: furnishing.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedFurnishing = newValue!;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: totalArea,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Total Area',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton(
                  // Initial Value
                  value: selectedAreaUnit,
                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: areaUnit.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedAreaUnit = newValue!;
                    });
                  },
                ),
                TextField(
                  controller: builtArea,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Built Area',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                DropdownButton(
                  // Initial Value
                  value: selectedBuiltArea,

                  // Down Arrow Icon
                  icon: const Icon(Icons.keyboard_arrow_down),

                  // Array list of items
                  items: areaUnit.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  // After selecting the desired option,it will
                  // change button value to selected value
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedBuiltArea = newValue!;
                    });
                  },
                ),
                Row(
                  children: [
                    Text("Property Face:"),
                    SizedBox(
                      width: 30,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedPropertyFace,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: propertyFace.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedPropertyFace = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Bedroom"),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedBedroom,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: Rooms.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBedroom = newValue!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text("Kitchen"),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedKitchen,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: Rooms.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedKitchen = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Living Room"),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedLivingroom,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: Rooms.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedLivingroom = newValue!;
                        });
                      },
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text("Bathroom"),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedBathroom,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: Rooms.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedBathroom = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Parking"),
                    SizedBox(
                      width: 10,
                    ),
                    DropdownButton(
                      // Initial Value
                      value: selectedParking,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: Rooms.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedParking = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Amenitities:"),
                Row(
                  children: [
                    customSwitch(
                        "Air Conditioner", air_conditioner, onChangeFunction1),
                    customSwitch("Security", Security, onChangeFunction2),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("Parking", Parking, onChangeFunction3),
                    customSwitch("Wi-Fi", WiFi, onChangeFunction4),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("Balcony", Balcony, onChangeFunction5),
                    customSwitch(
                        "Water Supply", Water_supply, onChangeFunction6),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("Gym", Gym, onChangeFunction7),
                    customSwitch(
                        "Swimming Pool", Swimming_pool, onChangeFunction8),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("TV Cable", Tv_Cable, onChangeFunction9),
                    customSwitch("Laundry", Laundry, onChangeFunction10),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("Lift", Lift, onChangeFunction11),
                    customSwitch("Fire Place", Fire_Place, onChangeFunction12),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("Garden", Garden, onChangeFunction13),
                    customSwitch("Solar", Solar, onChangeFunction14),
                  ],
                ),
                Row(
                  children: [
                    customSwitch(
                        "Modular Kitchen", Modular_kitchen, onChangeFunction15),
                    customSwitch("Drainage", Drainage, onChangeFunction16),
                  ],
                ),
                Row(
                  children: [
                    customSwitch("Public Transport", Public_Transport,
                        onChangeFunction17),
                    customSwitch(
                        "General Store", General_Store, onChangeFunction18),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("Description:"),
                  ],
                ),
                TextFormField(
                  controller: description,
                  minLines: 2,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                      hintText: 'Write your Description here....'),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: price,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Price ',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text("Price Label:"),
                    Spacer(),
                    DropdownButton(
                      // Initial Value
                      value: selectedPriceLabel,

                      // Down Arrow Icon
                      icon: const Icon(Icons.keyboard_arrow_down),

                      // Array list of items
                      items: priceLabel.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      // After selecting the desired option,it will
                      // change button value to selected value
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedPriceLabel = newValue!;
                        });
                      },
                    ),
                  ],
                ),
                customSwitch("Negotiable", negotiable, onChangeFunction19),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ownerName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Owner Name ',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: ownerPhone,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Owner Phone ',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: imgURL,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Image link ',
                  ),
                ),
                // ElevatedButton(
                //     onPressed: () {
                //       Get.toNamed('/uploadimage');
                //     },
                //     child: Text('Upload image')),
              ],
            ),
          ),
        ),
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
                Text('Road Size : ${roadSize.text} ${selectedRoadUnit}'),
                Text('Road Type : ${selectedRoadType}'),
                Text(
                    'Distance from Main Road: ${roadDist.text} ${selectedRoadDistUnit}'),
                Text('Built Year : ${builtYear.text}'),
                Text('Total Floor : ${totalfloor.text}'),
                Text('Furnishing : ${selectedFurnishing}'),
                Text('Total Area : ${totalArea.text} ${selectedAreaUnit}'),
                Text('Built Up Area :${builtArea.text} ${selectedBuiltArea}'),
                Text('Property Face : ${selectedPropertyFace}'),
                Text('Bedroom : ${selectedBedroom}'),
                Text('Kitchen : ${selectedKitchen}'),
                Text('Living Room : ${selectedLivingroom}'),
                Text('Bathroom : ${selectedBathroom}'),
                Text('Parking : ${selectedParking}'),
                Text("Description: ${description.text}"),
                Text('Price : Rs. ${price.text} ${selectedPriceLabel}'),
                Text('Negotiable : ${negotiable}'),
                Text('Owner Name : ${ownerName.text}'),
                Text('Owner Phone : ${ownerPhone.text}'),
              ],
            ),
          ),
        ),
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

  Widget customSwitch(String text, bool val, Function onChangeMethod) {
    return Row(
      children: [
        Text(text),
        Switch(
            value: val,
            onChanged: (newValue) {
              onChangeMethod(newValue);
            })
      ],
    );
  }
}
