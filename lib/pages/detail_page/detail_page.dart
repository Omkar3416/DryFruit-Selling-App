import 'package:dry_fruits/models/Fruit.dart';
import 'package:dry_fruits/pages/detail_page/widgets/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
 // const DetailPage({Key? key}) : super(key: key);
  final Fruit fruit;
  DetailPage({Key? key, required this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        shape: ContinuousRectangleBorder(
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(80),bottomRight: Radius.circular(80)
          ),
        ),
        backgroundColor: Colors.white.withOpacity(0.30),
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back,color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
          actions: <Widget>[
      Padding(
      padding: EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {

          },
          child: Icon(
            Icons.shopping_cart,color: Colors.white,
            size: 26.0,
          ),


        )
    ),
        ],

      ),
      //appBar: buildAppBar(context),
      backgroundColor: fruit.color,
      body: Body(fruit: fruit),



    );
  }

}
