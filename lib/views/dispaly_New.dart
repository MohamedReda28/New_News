import 'package:flutter/material.dart';

import '../models/artical_model.dart';

class DispalyNew extends StatelessWidget {
  const DispalyNew({super.key, required this.articalModel});
  final ArticalModel articalModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: articalModel.image == null
                    ? Image.asset(
                        'assets/empty.png',
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      )
                    : Image.network(
                        articalModel.image!,
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      articalModel.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        color: Colors.black87,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      articalModel.subTitle!,
                      maxLines: 2,
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
