import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselSliderImage extends StatefulWidget {
 // const CarouselSlideImage({Key? key}) : super(key: key);
  final List<Image> listImage;
  final int index;
  CarouselSliderImage({Key? key, required this.index, required this.listImage }): super(key: key);
  @override
  _CarouselSliderImageState createState() => _CarouselSliderImageState();
}

class _CarouselSliderImageState extends State<CarouselSliderImage> {
  int _current=0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: '${widget.index}',
          child: CarouselSlider(
            items: widget.listImage,
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: 150,
              autoPlay: true,
              viewportFraction: 1.0,
              onPageChanged: (index,reason){
                setState(() {
                  _current = index;
                });
              }
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.listImage.map((e){
            int index = widget.listImage.indexOf(e);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index? Colors.white: Colors.white38,
              ),
            );
          }).toList(),
        )
      ],
    );


  }
}
