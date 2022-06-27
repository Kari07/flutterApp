import 'dart:convert';

List<AlbumBo> albumBoFromJson(String str) => List<AlbumBo>.from(json.decode(str).map((x) => AlbumBo.fromJson(x)));

String albumBoToJson(List<AlbumBo> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class AlbumBo {
    AlbumBo({
        required this.albumId,
        required this.id,
        required this.title,
        required this.url,
        required this.thumbnailUrl,
    });

    int albumId;
    int id;
    String title;
    String url;
    String thumbnailUrl;

    factory AlbumBo.fromJson(Map<String, dynamic> json) => AlbumBo(
        albumId: json["albumId"],
        id: json["id"],
        title: json["title"],
        url: json["url"],
        thumbnailUrl: json["thumbnailUrl"],
    );

    Map<String, dynamic> toJson() => {
        "albumId": albumId,
        "id": id,
        "title": title,
        "url": url,
        "thumbnailUrl": thumbnailUrl,
    };
}