import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'New ',
          style: TextStyle(color: Colors.amber, fontSize: 24),
        ),
        SizedBox(height: 10,),
        Text(
          'News',
          style: TextStyle( fontSize: 24),
        ),
      ],
    );
  }
}
