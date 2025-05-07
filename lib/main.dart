import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/cubit/artical_cubit.dart';
import 'package:project2/views/home_view.dart';

void main() async {
  runApp(const NewsApp());

}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArticalCubit(),
      child: const MaterialApp(

        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}

