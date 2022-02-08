import 'package:carousel_slider/carousel_slider.dart';
import 'package:dry_fruits/models/Fruit.dart';
import 'package:dry_fruits/pages/home_page/widgets/carousel_slider_image.dart';
import 'package:dry_fruits/pages/home_page/widgets/cart.dart';
import 'package:dry_fruits/pages/home_page/widgets/detail_container.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Fruit fruit;
  Body({Key? key, required this.fruit}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [

          CarouselSliderImage(
            index: fruit.id,
            listImage: fruit.images,
          ),

          DetailContainer(
            fruit: fruit,
          ),

        ],

      ),

    );

  }

}

