class RentalDetails {
  List<Data>? data;
  Meta? meta;

  RentalDetails({this.data, this.meta});

  RentalDetails.fromJson(Map<String, dynamic> json) {
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
  int? rent;
  int? water;
  int? electricity;
  int? solar;
  int? internet;
  int? sanitation;
  String? date;
  int? receivedAmt;
  String? receivedDate;
  int? previousBalance;
  int? total;
  int? balance;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  Attributes(
      {this.rent,
      this.water,
      this.electricity,
      this.solar,
      this.internet,
      this.sanitation,
      this.date,
      this.receivedAmt,
      this.receivedDate,
      this.previousBalance,
      this.total,
      this.balance,
      this.createdAt,
      this.updatedAt,
      this.publishedAt});

  Attributes.fromJson(Map<String, dynamic> json) {
    rent = json['rent'];
    water = json['water'];
    electricity = json['Electricity'];
    solar = json['Solar'];
    internet = json['Internet'];
    sanitation = json['Sanitation'];
    date = json['date'];
    receivedAmt = json['received_amt'];
    receivedDate = json['received_date'];
    previousBalance = json['previous_balance'];
    total = json['total'];
    balance = json['balance'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rent'] = this.rent;
    data['water'] = this.water;
    data['Electricity'] = this.electricity;
    data['Solar'] = this.solar;
    data['Internet'] = this.internet;
    data['Sanitation'] = this.sanitation;
    data['date'] = this.date;
    data['received_amt'] = this.receivedAmt;
    data['received_date'] = this.receivedDate;
    data['previous_balance'] = this.previousBalance;
    data['total'] = this.total;
    data['balance'] = this.balance;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['publishedAt'] = this.publishedAt;
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
