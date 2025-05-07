import 'package:flutter/material.dart';

import '../models/Category modal.dart';

class CategoryCard extends StatelessWidget {
  final Category_Model category;
  final void Function() ontap;
  const CategoryCard({required this.category, required this.ontap});

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          height: 90,
          width: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              //بتخلي الصوره تاخد كل مساحه الكنتينير
                fit: BoxFit.fill,
                image:AssetImage(category.image)),
            borderRadius: BorderRadius.circular(8.0),
          ),
          ),
    );
  }
}
