import 'package:flutter/material.dart';
import 'package:project2/constant.dart';

import 'package:project2/widgets/category_card.dart';

import '../models/Category modal.dart';

class CategoryCardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Category_Model> categorys= [

      const Category_Model(
          image:'assets/general.avif' ,
          title_name: 'General'
      ),
      const Category_Model(
          image:'assets/technology.jpeg' ,
          title_name: 'Technology'
      ),
      const Category_Model(
          image:'assets/entertaiment.avif' ,
          title_name: 'Entertaiment'
      ),
      const Category_Model(
          image:'assets/sports.avif' ,
          title_name: 'Sport'
      ),
      const Category_Model(
          image:'assets/business.avif' ,
          title_name: 'Business'
      ),
      const Category_Model(
          image:'assets/science.avif' ,
          title_name: 'Science'
      ),
      const Category_Model(
          image:'assets/health.avif' ,
          title_name: 'Health'
      ),
    ];
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(right: 12),
            child: CategoryCard(category: categorys[index]))),
    );
  }
}
