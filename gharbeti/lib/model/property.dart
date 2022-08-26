class Property {
  List<Data>? data;
  Meta? meta;

  Property({this.data, this.meta});

  Property.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new Meta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class Data {
  int? id;
  Attributes? attributes;

  Data({this.id, this.attributes});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = json['attributes'] != null
        ? new Attributes.fromJson(json['attributes'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    return data;
  }
}

class Attributes {
  String? propertyType;
  String? propertyCategories;
  String? propertyTitle;
  String? address;
  String? status;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;
  String? imageUrl;
  RoadSize? roadSize;
  BuildingDetails? buildingDetails;
  TotalArea? totalArea;
  BuiltUpArea? builtUpArea;
  PropertyFace? propertyFace;
  NoOfRoom? noOfRoom;
  Amenities? amenities;
  Description? description;
  OwnerDetails? ownerDetails;
  Price? price;

  Attributes(
      {this.propertyType,
      this.propertyCategories,
      this.propertyTitle,
      this.address,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.publishedAt,
      this.imageUrl,
      this.roadSize,
      this.buildingDetails,
      this.totalArea,
      this.builtUpArea,
      this.propertyFace,
      this.noOfRoom,
      this.amenities,
      this.description,
      this.ownerDetails,
      this.price});

  Attributes.fromJson(Map<String, dynamic> json) {
    propertyType = json['property_type'];
    propertyCategories = json['property_categories'];
    propertyTitle = json['property_title'];
    address = json['address'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
    imageUrl = json['image_url'];
    roadSize = json['road_size'] != null
        ? new RoadSize.fromJson(json['road_size'])
        : null;
    buildingDetails = json['building_details'] != null
        ? new BuildingDetails.fromJson(json['building_details'])
        : null;
    totalArea = json['total_area'] != null
        ? new TotalArea.fromJson(json['total_area'])
        : null;
    builtUpArea = json['built_up_area'] != null
        ? new BuiltUpArea.fromJson(json['built_up_area'])
        : null;
    propertyFace = json['property_face'] != null
        ? new PropertyFace.fromJson(json['property_face'])
        : null;
    noOfRoom = json['no_of_room'] != null
        ? new NoOfRoom.fromJson(json['no_of_room'])
        : null;
    amenities = json['amenities'] != null
        ? new Amenities.fromJson(json['amenities'])
        : null;
    description = json['description'] != null
        ? new Description.fromJson(json['description'])
        : null;
    ownerDetails = json['owner_details'] != null
        ? new OwnerDetails.fromJson(json['owner_details'])
        : null;
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['property_type'] = this.propertyType;
    data['property_categories'] = this.propertyCategories;
    data['property_title'] = this.propertyTitle;
    data['address'] = this.address;
    data['status'] = this.status;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
    data['image_url'] = this.imageUrl;
    if (this.roadSize != null) {
      data['road_size'] = this.roadSize!.toJson();
    }
    if (this.buildingDetails != null) {
      data['building_details'] = this.buildingDetails!.toJson();
    }
    if (this.totalArea != null) {
      data['total_area'] = this.totalArea!.toJson();
    }
    if (this.builtUpArea != null) {
      data['built_up_area'] = this.builtUpArea!.toJson();
    }
    if (this.propertyFace != null) {
      data['property_face'] = this.propertyFace!.toJson();
    }
    if (this.noOfRoom != null) {
      data['no_of_room'] = this.noOfRoom!.toJson();
    }
    if (this.amenities != null) {
      data['amenities'] = this.amenities!.toJson();
    }
    if (this.description != null) {
      data['description'] = this.description!.toJson();
    }
    if (this.ownerDetails != null) {
      data['owner_details'] = this.ownerDetails!.toJson();
    }
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    return data;
  }
}

class RoadSize {
  int? id;
  int? roadSize;
  String? unit;
  String? roadType;
  int? distanceFormMainRoad;
  String? distanceUnit;

  RoadSize(
      {this.id,
      this.roadSize,
      this.unit,
      this.roadType,
      this.distanceFormMainRoad,
      this.distanceUnit});

  RoadSize.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    roadSize = json['road_size'];
    unit = json['unit'];
    roadType = json['road_type'];
    distanceFormMainRoad = json['distance_form_main_road'];
    distanceUnit = json['distance_unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['road_size'] = this.roadSize;
    data['unit'] = this.unit;
    data['road_type'] = this.roadType;
    data['distance_form_main_road'] = this.distanceFormMainRoad;
    data['distance_unit'] = this.distanceUnit;
    return data;
  }
}

class BuildingDetails {
  int? id;
  String? builtYear;
  int? totalFloors;
  String? furnishing;

  BuildingDetails({this.id, this.builtYear, this.totalFloors, this.furnishing});

  BuildingDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    builtYear = json['built_year'];
    totalFloors = json['total_floors'];
    furnishing = json['furnishing'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['built_year'] = this.builtYear;
    data['total_floors'] = this.totalFloors;
    data['furnishing'] = this.furnishing;
    return data;
  }
}

class TotalArea {
  int? id;
  int? area;
  String? units;

  TotalArea({this.id, this.area, this.units});

  TotalArea.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    area = json['area'];
    units = json['units'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['area'] = this.area;
    data['units'] = this.units;
    return data;
  }
}

class BuiltUpArea {
  int? id;
  int? builtUpArea;
  String? areaUnit;

  BuiltUpArea({this.id, this.builtUpArea, this.areaUnit});

  BuiltUpArea.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    builtUpArea = json['built_up_area'];
    areaUnit = json['area_unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['built_up_area'] = this.builtUpArea;
    data['area_unit'] = this.areaUnit;
    return data;
  }
}

class PropertyFace {
  int? id;
  String? propertyFace;

  PropertyFace({this.id, this.propertyFace});

  PropertyFace.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    propertyFace = json['property_face'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['property_face'] = this.propertyFace;
    return data;
  }
}

class NoOfRoom {
  int? id;
  int? bedrooms;
  int? kitchens;
  int? livingroom;
  int? bathroom;
  int? parking;

  NoOfRoom(
      {this.id,
      this.bedrooms,
      this.kitchens,
      this.livingroom,
      this.bathroom,
      this.parking});

  NoOfRoom.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bedrooms = json['bedrooms'];
    kitchens = json['kitchens'];
    livingroom = json['livingroom'];
    bathroom = json['bathroom'];
    parking = json['parking'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['bedrooms'] = this.bedrooms;
    data['kitchens'] = this.kitchens;
    data['livingroom'] = this.livingroom;
    data['bathroom'] = this.bathroom;
    data['parking'] = this.parking;
    return data;
  }
}

class Amenities {
  int? id;
  bool? airConditioner;
  bool? security;
  bool? parking;
  bool? wiFi;
  bool? balcony;
  bool? waterSupply;
  bool? gym;
  bool? swimmingPool;
  bool? tvCable;
  bool? laundry;
  bool? lift;
  bool? firePlace;
  bool? garden;
  bool? solar;
  bool? modularKitchen;
  bool? drainage;
  bool? publicTransport;
  bool? generalStore;

  Amenities(
      {this.id,
      this.airConditioner,
      this.security,
      this.parking,
      this.wiFi,
      this.balcony,
      this.waterSupply,
      this.gym,
      this.swimmingPool,
      this.tvCable,
      this.laundry,
      this.lift,
      this.firePlace,
      this.garden,
      this.solar,
      this.modularKitchen,
      this.drainage,
      this.publicTransport,
      this.generalStore});

  Amenities.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    airConditioner = json['air_conditioner'];
    security = json['Security'];
    parking = json['Parking'];
    wiFi = json['WiFi'];
    balcony = json['Balcony'];
    waterSupply = json['Water_supply'];
    gym = json['Gym'];
    swimmingPool = json['Swimming_pool'];
    tvCable = json['Tv_Cable'];
    laundry = json['Laundry'];
    lift = json['Lift'];
    firePlace = json['Fire_Place'];
    garden = json['Garden'];
    solar = json['Solar'];
    modularKitchen = json['Modular_kitchen'];
    drainage = json['Drainage'];
    publicTransport = json['Public_Transport'];
    generalStore = json['General_Store'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['air_conditioner'] = this.airConditioner;
    data['Security'] = this.security;
    data['Parking'] = this.parking;
    data['WiFi'] = this.wiFi;
    data['Balcony'] = this.balcony;
    data['Water_supply'] = this.waterSupply;
    data['Gym'] = this.gym;
    data['Swimming_pool'] = this.swimmingPool;
    data['Tv_Cable'] = this.tvCable;
    data['Laundry'] = this.laundry;
    data['Lift'] = this.lift;
    data['Fire_Place'] = this.firePlace;
    data['Garden'] = this.garden;
    data['Solar'] = this.solar;
    data['Modular_kitchen'] = this.modularKitchen;
    data['Drainage'] = this.drainage;
    data['Public_Transport'] = this.publicTransport;
    data['General_Store'] = this.generalStore;
    return data;
  }
}

class Description {
  int? id;
  String? description;

  Description({this.id, this.description});

  Description.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    return data;
  }
}

class OwnerDetails {
  int? id;
  String? ownerName;
  String? ownerPhone;

  OwnerDetails({this.id, this.ownerName, this.ownerPhone});

  OwnerDetails.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    ownerName = json['OwnerName'];
    ownerPhone = json['OwnerPhone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['OwnerName'] = this.ownerName;
    data['OwnerPhone'] = this.ownerPhone;
    return data;
  }
}

class Price {
  int? id;
  int? price;
  String? priceLabel;
  bool? negotiable;

  Price({this.id, this.price, this.priceLabel, this.negotiable});

  Price.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    price = json['price'];
    priceLabel = json['Price_label'];
    negotiable = json['Negotiable'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['price'] = this.price;
    data['Price_label'] = this.priceLabel;
    data['Negotiable'] = this.negotiable;
    return data;
  }
}

class Meta {
  Pagination? pagination;

  Meta({this.pagination});

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = json['pagination'] != null
        ? new Pagination.fromJson(json['pagination'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class Pagination {
  int? page;
  int? pageSize;
  int? pageCount;
  int? total;

  Pagination({this.page, this.pageSize, this.pageCount, this.total});

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['pageSize'] = this.pageSize;
    data['pageCount'] = this.pageCount;
    data['total'] = this.total;
    return data;
  }
}
