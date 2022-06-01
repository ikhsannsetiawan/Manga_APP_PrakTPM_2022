import 'dart:convert';

SearchResultModel searchResultModelFromJson(String str) => SearchResultModel.fromJson(json.decode(str));

String searchResultModelToJson(SearchResultModel data) => json.encode(data.toJson());

class SearchResultModel {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  late List<Manga> manga;

  SearchResultModel({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    required this.manga,
  });

  factory SearchResultModel.fromJson(Map<String, dynamic> json) => new SearchResultModel(
    requestHash: json["request_hash"],
    requestCached: json["request_cached"],
    requestCacheExpiry: json["request_cache_expiry"],
    manga: new List<Manga>.from(json["results"].map((x) => Manga.fromJson(x))),
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
  String? synopsis;
  String? type;
  String? imageUrl;
  double? score;

  Manga({
    this.malId,
    this.title,
    this.url,
    this.synopsis,
    this.type,
    this.imageUrl,
    this.score,
  });

  factory Manga.fromJson(Map<String, dynamic> json) => new Manga(
    malId: json['mal_id'],
    title: json['title'],
    url: json['url'],
    synopsis: json['synopsis'],
    type: json['type'],
    imageUrl: json['image_url'],
    score: json['score'] == null ? null : json['score'].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "mal_id": malId,
    "title": title,
    "url": url,
    "synopsis": synopsis,
    "type": type,
    "image_url": imageUrl,
    "score": score,
  };
}