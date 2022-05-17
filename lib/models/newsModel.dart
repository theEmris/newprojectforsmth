// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
    NewsModel({
        this.id,
        this.attributes,
    });

    int? id;
    NewsModelAttributes? attributes;

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        id: json["id"],
        attributes: NewsModelAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
    };
}

class NewsModelAttributes {
    NewsModelAttributes({
        this.about,
        this.description,
        this.sort,
        this.createdAt,
        this.updatedAt,
        this.publishedAt,
        this.image,
    });

    String? about;
    String? description;
    String? sort;
    DateTime ?createdAt;
    DateTime? updatedAt;
    DateTime? publishedAt;
    Image? image;

    factory NewsModelAttributes.fromJson(Map<String, dynamic> json) => NewsModelAttributes(
        about: json["about"],
        description: json["description"],
        sort: json["sort"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        image: Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "about": about,
        "description": description,
        "sort": sort,
        "createdAt": createdAt.toString(),
        "updatedAt": updatedAt.toString(),
        "publishedAt": publishedAt.toString(),
        "image": image!.toJson(),
    };
}

class Image {
    Image({
        this.data,
    });

    List<Datum>? data;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    };
}

class Datum {
    Datum({
        this.id,
        this.attributes,
    });

    int ?id;
    DatumAttributes? attributes;

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        attributes: DatumAttributes.fromJson(json["attributes"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes!.toJson(),
    };
}

class DatumAttributes {
    DatumAttributes({
        this.name,
        this.alternativeText,
        this.caption,
        this.width,
        this.height,
        this.formats,
        this.hash,
        this.ext,
        this.mime,
        this.size,
        this.url,
        this.previewUrl,
        this.provider,
        this.providerMetadata,
        this.createdAt,
        this.updatedAt,
    });

    String? name;
    String? alternativeText;
    String? caption;
    int? width;
    int? height;
    Formats? formats;
    String? hash;
    String? ext;
    String? mime;
    double? size;
    String? url;
    dynamic? previewUrl;
    String? provider;
    dynamic? providerMetadata;
    DateTime? createdAt;
    DateTime? updatedAt;

    factory DatumAttributes.fromJson(Map<String, dynamic> json) => DatumAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        size: json["size"].toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats!.toJson(),
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toString(),
        "updatedAt": updatedAt.toString(),
    };
}

class Formats {
    Formats({
        this.thumbnail,
    });

    Thumbnail? thumbnail;

    factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
    );

    Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail!.toJson(),
    };
}

class Thumbnail {
    Thumbnail({
        this.name,
        this.hash,
        this.ext,
        this.mime,
        this.path,
        this.width,
        this.height,
        this.size,
        this.url,
    });

    String? name;
    String? hash;
    String? ext;
    String? mime;
    dynamic? path;
    int? width;
    int? height;
    double? size;
    String? url;

    factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        name: json["name"],
        hash: json["hash"],
        ext: json["ext"],
        mime: json["mime"],
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"].toDouble(),
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": ext,
        "mime": mime,
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "url": url,
    };
}
