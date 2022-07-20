class NewsModel {
  Sourse? sourse;
  String? author;
  String? description;
  String? url;
  String? urlToImage;
  String? title;
  String? content;
  String? imageUrl;
  bool isLike = false;
  NewsModel.fromJson(Map<String, dynamic> map) {
    sourse = Sourse.fromJson(map['source']);
    author = map['author'];
    description = map['description'];
    url = map['url'];
    urlToImage = map['urlToImage'];
    title = map['title'];
    content = map['content'];
    imageUrl = map['imageUrl'];
  }
  NewsModel(
      {required this.title,
      required this.content,
      required this.imageUrl,
      this.isLike = false});
}

class Sourse {
  String? id;
  String? name;
  Sourse.fromJson(Map<String, dynamic> map) {
    id = map['id'];
    name = map['name'];
  }
}
