import 'package:flutter/material.dart';

class TitleDescription extends StatelessWidget {
  //const TitleDescription({Key? key}) : super(key: key);
  final String title, description;
  TitleDescription({Key? key, required this.title, required this.description}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 20),
        Text(description, style: TextStyle(height: 1.5),
        )
      ],
    );
  }
}
