import 'package:flutter/material.dart';
import 'package:project2/models/artical_model.dart';

// cached network image
class NewsTile extends StatelessWidget {
  const NewsTile({required this.mymodel});
  final ArticalModel mymodel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: mymodel.image == null ? Image.asset('assets/empty.png',
              height: 200,
              width: double.infinity,
              fit: BoxFit.fill,
            ):Image.network(
              mymodel.image!,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          mymodel.title ?? 'test',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          mymodel.subTitle ?? 'test',
          maxLines: 2,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
