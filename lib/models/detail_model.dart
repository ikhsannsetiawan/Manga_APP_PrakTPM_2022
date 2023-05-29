import 'dart:convert';


DetailModel detailModelFromJson(String str) => DetailModel.fromJson(json.decode(str));

String detailModelToJson(DetailModel data) => json.encode(data.toJson());

class DetailModel {
  Manga? manga;

  DetailModel({
    this.manga
  });

  DetailModel.fromJson(Map<String, dynamic> json) {
    manga = json['data'] != null ? new Manga.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.manga != null) {
      data['data'] = this.manga!.toJson();
    }
    return data;
  }

  // factory DetailModel.fromJson(Map<String, dynamic> json) => new DetailModel(
  //   manga: this.manga.fromJson(json['data']),
  // );

  // Map<String, dynamic> toJson() => {
  // };

}

class Manga {
  int? malId;
  String? url;
  String? title;
  String? status;
  Images? images;
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

  Manga({
    this.malId,
    this.url,
    this.title,
    this.status,
    this.images,
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

  factory Manga.fromJson(Map<String, dynamic> json) => new Manga(
    malId: json["mal_id"],
    url: json["url"],
    title: json["title"],
    status: json["status"],
    images : json['images'] != null ? new Images.fromJson(json['images']) : null,
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
    "mal_id": malId,
    "url": url,
    "title": title,
    "status": status,
    "images": images,
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