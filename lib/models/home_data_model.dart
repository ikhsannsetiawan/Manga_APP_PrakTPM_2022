import 'dart:convert';

HomeDataModel homeDataModelFromJson(String str) => HomeDataModel.fromJson(json.decode(str));

String homeDataModelToJson(HomeDataModel data) => json.encode(data.toJson());

class HomeDataModel {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  late List<Manga> manga;

  HomeDataModel({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    required this.manga,
  });

  factory HomeDataModel.fromJson(Map<String, dynamic> json) => new HomeDataModel(
    requestHash: json["request_hash"],
    requestCached: json["request_cached"],
    requestCacheExpiry: json["request_cache_expiry"],
    manga: new List<Manga>.from(json["top"].map((x) => Manga.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "request_hash": requestHash,
    "request_cached": requestCached,
    "request_cache_expiry": requestCacheExpiry,
    "manga": new List<dynamic>.from(manga.map((x) => x.toJson())),
  };
}

class Manga {
  int? malId;
  String? title;
  String? url;
  String? startDate;
  String? endDate;
  String? imageUrl;
  double? score;

  Manga({
    this.malId,
    this.title,
    this.url,
    this.startDate,
    this.endDate,
    this.imageUrl,
    this.score,
  });

  factory Manga.fromJson(Map<String, dynamic> json) => new Manga(
    malId: json['mal_id'],
    title: json['title'],
    url: json['url'],
    startDate: json['start_date'],
    endDate: json['end_date'],
    imageUrl: json['image_url'],
    score: json['score'] == null ? null : json['score'].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "mal_id": malId,
    "title": title,
    "url": url,
    "start_date": startDate,
    "end_date": endDate,
    "image_url": imageUrl,
    "score": score,
  };
}