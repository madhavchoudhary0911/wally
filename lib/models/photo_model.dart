class PhotoModel {
  int? id;
  String? url;
  PhotoSize? photoSize;

  PhotoModel(
      {this.id,
      this.url,
      this.photoSize,
      });

  PhotoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    photoSize = json['src'] != null ? PhotoSize.fromJson(json['src']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;

    data['url'] = this.url;
    if (this.photoSize != null) {
      data['src'] = this.photoSize!.toJson();
    }
    return data;
  }
}

class PhotoSize {
  String? original;
  String? large2x;
  String? large;
  String? medium;
  String? small;
  String? portrait;
  String? landscape;
  String? tiny;

  PhotoSize({this.original, this.large2x, this.large, this.medium, this.small, this.portrait, this.landscape, this.tiny});

  PhotoSize.fromJson(Map<String, dynamic> json) {
    original = json['original'];
    large2x = json['large2x'];
    large = json['large'];
    medium = json['medium'];
    small = json['small'];
    portrait = json['portrait'];
    landscape = json['landscape'];
    tiny = json['tiny'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['original'] = this.original;
    data['large2x'] = this.large2x;
    data['large'] = this.large;
    data['medium'] = this.medium;
    data['small'] = this.small;
    data['portrait'] = this.portrait;
    data['landscape'] = this.landscape;
    data['tiny'] = this.tiny;
    return data;
  }
}
