import 'package:project2/models/artical_model.dart';
import 'package:project2/services/api.dart';

class Services {
  Future<List<ArticalModel>> getdata(String? category) async {


    Map<String, dynamic> jsondata = await Api().get(
        url:
            'https://newsapi.org/v2/everything?q="${category}"&searchIn=title&apiKey=5111ab0219e746a2a811db1d9c0646cc');

    List<dynamic> articals = jsondata['articles'];
    List<ArticalModel> articalList = [];
    for (int i = 0; i < articals.length;i++) {
      articalList.add(ArticalModel.fromjson(articals[i]));
    }
    return articalList;
  }
}
