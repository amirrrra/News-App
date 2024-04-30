class ArticleModel {
  final String title;
  final String? subTitle;
  final String? image;

  ArticleModel({
    required this.title,
    required this.subTitle,
    required this.image,
  });

  // Named constructor builds object but (variables must be nullable + not final)
  // Factory Constructor uses named constructor to return an object

  // the constructor is expensive =>
  // return an existing instance instead of creating a new one.

  factory ArticleModel.fromjson(json) {
    return ArticleModel(
      title: json['title'],
      subTitle: json['description'],
      image: json['urlToImage'],
    );
  }
}
