import 'package:flutter/material.dart';

import '../models/Category modal.dart';

class CategoryCard extends StatelessWidget {
  final Category_Model category;
  const CategoryCard({required this.category});

  Widget build(BuildContext context) {
    return Container(
        height: 90,
        width: 160,
        decoration: BoxDecoration(
          image: DecorationImage(
            //بتخلي الصوره تاخد كل مساحه الكنتينير
              fit: BoxFit.fill,
              image:AssetImage(category.image)),
          borderRadius: BorderRadius.circular(8.0),
        ),
        child:
            Center(child: Text(category.title_name, style: TextStyle(fontSize: 18,color:Colors.white ))));
  }
}
