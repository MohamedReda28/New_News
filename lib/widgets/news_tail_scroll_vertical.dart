import 'package:flutter/cupertino.dart';
import 'package:project2/models/artical_model.dart';

import 'package:project2/widgets/news_tail.dart';

class NewsTailScrollVertical extends StatelessWidget {
  const NewsTailScrollVertical({required this.articalList});
  final List<ArticalModel> articalList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articalList.length,
        itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.only(bottom: 10),
            child: NewsTile(
              mymodel: articalList[index],
            )));
  }
}
