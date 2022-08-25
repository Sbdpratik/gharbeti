class Property {
  Property({
    required this.data,
    required this.meta,
  });
  late final List<Data> data;
  late final Meta meta;

  Property.fromJson(Map<String, dynamic> json) {
    data = List.from(json['data']).map((e) => Data.fromJson(e)).toList();
    meta = Meta.fromJson(json['meta']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data.map((e) => e.toJson()).toList();
    _data['meta'] = meta.toJson();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.attributes,
  });
  late final int id;
  late final Attributes attributes;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    attributes = Attributes.fromJson(json['attributes']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['attributes'] = attributes.toJson();
    return _data;
  }
}

class Attributes {
  Attributes({
    required this.propertyType,
    required this.propertyCategories,
    required this.propertyTitle,
    required this.address,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });
  late final String propertyType;
  late final String propertyCategories;
  late final String propertyTitle;
  late final String address;
  late final String status;
  late final String createdAt;
  late final String updatedAt;
  late final String publishedAt;

  Attributes.fromJson(Map<String, dynamic> json) {
    propertyType = json['property_type'];
    propertyCategories = json['property_categories'];
    propertyTitle = json['property_title'];
    address = json['address'];
    status = json['status'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    publishedAt = json['publishedAt'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['property_type'] = propertyType;
    _data['property_categories'] = propertyCategories;
    _data['property_title'] = propertyTitle;
    _data['address'] = address;
    _data['status'] = status;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['publishedAt'] = publishedAt;
    return _data;
  }
}

class Meta {
  Meta({
    required this.pagination,
  });
  late final Pagination pagination;

  Meta.fromJson(Map<String, dynamic> json) {
    pagination = Pagination.fromJson(json['pagination']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['pagination'] = pagination.toJson();
    return _data;
  }
}

class Pagination {
  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });
  late final int page;
  late final int pageSize;
  late final int pageCount;
  late final int total;

  Pagination.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    pageSize = json['pageSize'];
    pageCount = json['pageCount'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['page'] = page;
    _data['pageSize'] = pageSize;
    _data['pageCount'] = pageCount;
    _data['total'] = total;
    return _data;
  }
}
