class GetDataResponseModel {
  GetDataResponseModel({
    this.currentBookings,
    this.packages,
  });

  CurrentBookings? currentBookings;
  List<Package>? packages;

  factory GetDataResponseModel.fromJson(Map<String, dynamic> json) =>
      GetDataResponseModel(
        currentBookings: CurrentBookings.fromJson(json["current_bookings"]),
        packages: List<Package>.from(
            json["packages"].map((x) => Package.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "current_bookings": currentBookings?.toJson(),
        "packages": List<dynamic>.from(packages!.map((x) => x.toJson())),
      };
}

class CurrentBookings {
  CurrentBookings({
    this.packageLabel,
    this.fromDate,
    this.fromTime,
    this.toDate,
    this.toTime,
  });

  String? packageLabel;
  String? fromDate;
  String? fromTime;
  String? toDate;
  String? toTime;

  factory CurrentBookings.fromJson(Map<String, dynamic> json) =>
      CurrentBookings(
        packageLabel: json["package_label"],
        fromDate: json["from_date"],
        fromTime: json["from_time"],
        toDate: json["to_date"],
        toTime: json["to_time"],
      );

  Map<String, dynamic> toJson() => {
        "package_label": packageLabel,
        "from_date": fromDate,
        "from_time": fromTime,
        "to_date": toDate,
        "to_time": toTime,
      };
}

class Package {
  Package({
    this.id,
    this.packageName,
    this.price,
    this.description,
  });

  int? id;
  String? packageName;
  int? price;
  String? description;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        id: json["id"],
        packageName: json["package_name"],
        price: json["price"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "package_name": packageName,
        "price": price,
        "description": description,
      };
}
