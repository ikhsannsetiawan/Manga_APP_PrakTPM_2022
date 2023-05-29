import 'dart:convert';

HomeDataModel homeDataModelFromJson(String str) => HomeDataModel.fromJson(json.decode(str));

String homeDataModelToJson(HomeDataModel data) => json.encode(data.toJson());

class HomeDataModel {
  late List<Manga> manga;

  HomeDataModel({
    required this.manga,
  });

  factory HomeDataModel.fromJson(Map<String, dynamic> json) => new HomeDataModel(
    manga: new List<Manga>.from(json["data"].map((x) => Manga.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "manga": new List<dynamic>.from(manga.map((x) => x.toJson())),
  };
}

class Manga {
  int? malId;
  String? title;
  String? url;
  String? startDate;
  String? endDate;
  Images? images;
  double? score;

  Manga({
    this.malId,
    this.title,
    this.url,
    this.startDate,
    this.endDate,
    this.images,
    this.score,
  });

  factory Manga.fromJson(Map<String, dynamic> json) => new Manga(
    malId: json['mal_id'],
    title: json['title'],
    url: json['url'],
    startDate: json['start_date'],
    endDate: json['end_date'],
    images : json['images'] != null ? new Images.fromJson(json['images']) : null,
    score: json['score'] == null ? null : json['score'].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "mal_id": malId,
    "title": title,
    "url": url,
    "start_date": startDate,
    "end_date": endDate,
    "images": images,
    "score": score,
  };
}

class Images {
  Jpg? jpg;

  Images({this.jpg});

  Images.fromJson(Map<String, dynamic> json) {
    jpg = json['jpg'] != null ? new Jpg.fromJson(json['jpg']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.jpg != null) {
      data['jpg'] = this.jpg!.toJson();
    }
    return data;
  }
}

class Jpg {
  String? imageUrl;

  Jpg({this.imageUrl});

  Jpg.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image_url'] = this.imageUrl;
    return data;
  }
}