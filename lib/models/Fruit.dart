import 'package:flutter/material.dart';



List<Fruit> cart=[];




class Fruit{


  int qty=1;
  final int id;
  final num price;
  final String title, description, shortDescription;
  final Color color,selected;
  final List<Image> images;
  bool isFav;


  Fruit({

    required this.isFav,
    required this.title,
    required this.color,
    //required this.checkedToCart,
    required this.id,
    required this.description,
    required this.images,
    required this.price,
    required this.selected,
    required this.shortDescription,
});


}

List<Fruit> fruits = [
  Fruit(
    id: 0,
    title: 'Almond',
    description: textDescrition,
    color: Colors.deepPurple,
    images: [
      Image.asset('assets/diwali2.gif', height: 80,),
      Image.asset('assets/almond.png'),
      Image.asset('assets/almond2.gif'),

    ],
    //checkedToCart: true,
    isFav: true,
    // price: '₹ 751.00 (450 g)',
    price: 751,
    selected: Colors.deepPurple,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 1,
    title: 'Apricot',
    //price: '₹ 279.00 (200 g)',
    price: 751,
    description: textDescrition,
    color: Colors.green,
    images: [
      Image.asset('assets/diwali3.gif', height: 80),
      Image.asset('assets/Apricot.png'),
      Image.asset('assets/Apricot.png'),
    ],
    //checkedToCart: false,
    isFav: false,
    selected: Colors.green,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 2,
    title: 'Cashewnuts',
    description: textDescrition,
    //price: '₹ 339.15 (200 g)',
    price: 339,
    color: Colors.deepOrange,
    images: [
      Image.asset('assets/diwali4.gif', height: 80),
      Image.asset('assets/Cashewnuts.png'),
      Image.asset('assets/Cashewnuts2.gif'),
    ],
   // checkedToCart: true,
    isFav: true,
    selected: Colors.deepOrange,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 3,
    title: 'Dates',
    description: textDescrition,
    color: Colors.red,
    selected: Colors.red,
    //price: '₹ 250.00 (500 g)',
    price: 250,
    images: [
      Image.asset('assets/diwali5.gif', height: 80),
      Image.asset('assets/Dates.png'),
      Image.asset('assets/Dates.png'),
    ],
    //checkedToCart: true,
    isFav: true,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 4,
    title: 'Peanuts',
    description: textDescrition,
    //price: '₹ 325 (400 g)',
    price: 325,
    color: Colors.indigo,
    selected: Colors.indigo,
    images: [
      Image.asset('assets/diwali6.gif', height: 80),
      Image.asset('assets/Peanuts.png'),
      Image.asset('assets/Peanuts2.gif'),
    ],
    //checkedToCart: false,
    isFav: false,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 5,
    title: 'Foxnuts',
    description: textDescrition,
    color: Colors.red,
    selected: Colors.red,
    //price: '₹ 135.00 (80 g)',
    price: 135,
    images: [
      Image.asset('assets/diwali7.gif', height: 80),
      Image.asset('assets/Foxnuts.jpg'),
      Image.asset('assets/Foxnuts.jpg'),
    ],
    //checkedToCart: false,
    isFav: false,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 6,
    title: 'Foxnuts',
    description: textDescrition,
    // price: '₹ 135.00 (80 g)',
    price: 135,
    color: Colors.indigo,
    selected: Colors.indigo,
    images: [
      Image.asset('assets/diwali8.gif', height: 80),
      Image.asset('assets/Foxnuts.jpg'),
      Image.asset('assets/Foxnuts.jpg'),
    ],
   // checkedToCart: false,
    isFav: false,
    shortDescription: textShortDescription,
  ),
  Fruit(
    id: 7,
    title: 'Foxnuts',
    description: textDescrition,
    // price: '₹ 135.00 (80 g)',
    price: 135,
    color: Colors.indigo,
    selected: Colors.indigo,
    images: [
      Image.asset('assets/diwali1.gif', height: 80),
      Image.asset('assets/Foxnuts.jpg'),
      Image.asset('assets/Foxnuts.jpg'),
    ],
    //checkedToCart: false,
    isFav: false,
    shortDescription: textShortDescription,
  ),
];

String textShortDescription =
    "om";
String textDescrition =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
