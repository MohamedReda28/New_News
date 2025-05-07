import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project2/cubit/artical_cubit.dart';
import 'package:project2/cubit/artical_state.dart';
import 'package:project2/widgets/category_card_list_view.dart';
import 'package:project2/widgets/custom_app_bar.dart';
import 'package:project2/widgets/news_tail_scroll_vertical.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<ArticalCubit>(context).getData('education');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 30),
              CustomAppBar(),
              const SizedBox(height: 26),
              CategoryCardListView(),
              const SizedBox(height: 26),
              BlocConsumer<ArticalCubit, ArticalState>(
                listener: (context, state) {
                  if (state is Articalfailure) {
                    ShowSnackBar(context, state);
                  }
                },
                builder: (context, state) {
                  if (state is ArticalLoading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is ArticalSuccess) {
                    return Expanded(
                      child: NewsTailScrollVertical(
                        articalList: state.articalList,
                      ),
                    );
                  } else {
                    return const Center(
                      child: Text('No articles available.'),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> ShowSnackBar(
          BuildContext context, Articalfailure state) =>
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(state.errorMessege)));
}
