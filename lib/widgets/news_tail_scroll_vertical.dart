import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project2/models/artical_model.dart';

import 'package:project2/widgets/news_tail.dart';

import '../views/dispaly_New.dart';

class NewsTailScrollVertical extends StatelessWidget {
  const NewsTailScrollVertical({required this.articalList});
  final List<ArticalModel> articalList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: articalList.length,
        itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DispalyNew( articalModel: articalList[index] ,),),
                );

              },
              child: NewsTile(
                mymodel: articalList[index],
              ),
            )));
  }
}
