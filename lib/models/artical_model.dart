class ArticalModel {
  final String? image;

  final String? title;

  final String? subTitle;
  ArticalModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticalModel.fromjson(dynamic jsondata) {
    return ArticalModel(
        image: jsondata['urlToImage'],
        title: jsondata['title'],
        subTitle: jsondata['description']);
  }
}
