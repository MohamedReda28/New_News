import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/widgets/category_card.dart';
import '../cubit/artical_cubit.dart';
import '../models/Category modal.dart';

class CategoryCardListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Category_Model> categorys = [
      Category_Model(
        ontap: () {
          BlocProvider.of<ArticalCubit>(context).getData('flutter');
        },
        image: 'assets/flutter.png',
      ),
      Category_Model(
        ontap: () {
          BlocProvider.of<ArticalCubit>(context).getData('html');
        },
        image: 'assets/html.png',
      ),
      Category_Model(
        ontap: () {
          BlocProvider.of<ArticalCubit>(context).getData('css');
        },
        image: 'assets/css.png',
      ),
      Category_Model(
        ontap: () {
          BlocProvider.of<ArticalCubit>(context).getData('javascript');
        },
        image: 'assets/JavaScript.png',
      ),
      Category_Model(
        ontap: () {
          BlocProvider.of<ArticalCubit>(context).getData('python');
        },
        image: 'assets/python.jpg',
      ),
      Category_Model(
        ontap: () {
          BlocProvider.of<ArticalCubit>(context).getData('laravel');
        },
        image: 'assets/laravel.jpg',
      ),

    ];
    return SizedBox(
      height: 90,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categorys.length,
          itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(right: 12),
              child: CategoryCard(
                category: categorys[index],
                ontap: categorys[index].ontap,
              ))),
    );
  }
}
