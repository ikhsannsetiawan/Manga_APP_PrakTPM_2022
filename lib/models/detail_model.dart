import 'dart:convert';


DetailModel detailModelFromJson(String str) => DetailModel.fromJson(json.decode(str));

String detailModelToJson(DetailModel data) => json.encode(data.toJson());

class DetailModel {
  String? requestHash;
  bool? requestCached;
  int? requestCacheExpiry;
  int? malId;
  String? url;
  String? title;
  String? status;
  String? imageUrl;
  String? type;
  int? volumes;
  int? chapters;
  String? published;
  int? rank;
  double? score;
  int? scored_by;
  int? popularity;
  int? members;
  int? favorites;
  String? synopsis;

  DetailModel({
    this.requestHash,
    this.requestCached,
    this.requestCacheExpiry,
    this.malId,
    this.url,
    this.title,
    this.status,
    this.imageUrl,
    this.type,
    this.volumes,
    this.chapters,
    this.published,
    this.rank,
    this.score,
    this.scored_by,
    this.popularity,
    this.members,
    this.favorites,
    this.synopsis,
  });

  factory DetailModel.fromJson(Map<String, dynamic> json) => new DetailModel(
    requestHash: json["request_hash"],
    requestCached: json["request_chached"],
    requestCacheExpiry: json["request_cahce_expiry"],
    malId: json["mal_id"],
    url: json["url"],
    title: json["title"],
    status: json["status"],
    imageUrl: json["image_url"],
    type: json["type"],
    volumes: json["volumes"],
    chapters: json["chapters"],
    published: json["string"],
    rank: json["rank"],
    score: json["score"] == null ? null : json["score"].toDouble(),
    scored_by: json["scored_by"],
    popularity: json["popularity"],
    members: json["members"],
    favorites: json["favorites"],
    synopsis: json["synopsis"],
  );

  Map<String, dynamic> toJson() => {
    "request_hash": requestHash,
    "request_chached": requestCached,
    "request_cahce_expiry": requestCacheExpiry,
    "mal_id": malId,
    "url": url,
    "title": title,
    "status": status,
    "image_url": imageUrl,
    "type": type,
    "volumes": volumes,
    "chapters": chapters,
    "string": published,
    "rank": rank,
    "score": score,
    "scored_by": scored_by,
    "popularity": popularity,
    "members": members,
    "favorites": favorites,
    "synopsis": synopsis,
  };
}