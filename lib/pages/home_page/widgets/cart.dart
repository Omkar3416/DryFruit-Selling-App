import 'dart:ui';

import 'package:dry_fruits/models/Fruit.dart';
import 'package:flutter/material.dart';
class CartScreen extends StatefulWidget {
 // final index;


  //CartScreen({Key? key}): super(key: key);


  const CartScreen(List<Fruit> cart, {Key? key}) : super(key: key);


  //
  // final Color color;
  // final num price;
  // final Fruit fruit;
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Fruit = item.toSet().toList();
      body: ListView.builder(

        scrollDirection: Axis.vertical,
        shrinkWrap: true,

        //crossAxisCount: 2,
        itemCount: cart.length,
        itemBuilder: (BuildContext context, int index) {
          var item = cart[index];
          var qty = cart[index];

          return Padding(

            padding:
            const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),

            child: Container(
              height: 300,

              child: Card(

               // elevation: 4.0,
                child:Container(
                  // decoration: BoxDecoration(
                  //   gradient: LinearGradient(
                  //       colors: [Colors.pinkAccent,Colors.white],
                  //   )
                  //   //color: Colors.white,
                  //   //color: item.color,
                  //  // borderRadius: BorderRadius.all(Radius.circular(50)),
                  // ),
                  decoration: BoxDecoration(
                    gradient: new LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        tileMode: TileMode.repeated,
                        colors: [Colors.yellow,Colors.orangeAccent,Colors.yellow.shade300]),


                    color: item.color,
                    borderRadius: BorderRadius.circular(40),

                  ),
                // color: item.color,

                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(10.0),
                // ),
               // elevation: 10.0,
                margin: EdgeInsets.all(10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(

                      child: ListTile(


                        // leading: Icon(
                        //   //item.icon,
                        //   color: item.color,
                        // ),
                        // leading: Icon(Icons.no_food_outlined),
                        //tileColor: Colors.cyan,
                        title: Text(item.title),
                        //subtitle: Text(item.qty.toString()),


                        subtitle: Text(item.price.toString()),
                        //subtitle: Text((item.price+qty.price).toString()),
                        //subtitle: Text(widget.price+item.price.toString()),



                        trailing: GestureDetector(
                            child: Icon(
                              Icons.remove_circle,
                              color: Colors.red,
                            ),
                            onTap: () {
                              setState(() {
                                cart.remove(item);
                              });
                            }),

                      ),

                    ),

                    ButtonBar(
                      children: <Widget>[
                        FlatButton(
                          child: const Text('Buy Now'),
                          onPressed: () {},
                        ),

                      ],
                     ),

                  ],
                ),
              ),
              ),
            ),

          );

        },


        // children: cart.map((fruit)  {
        //   return Card(
        //     elevation: 4.0,
        //     child: Text(fruit.title),
        //   );
        // }).toList(),


      ),

    );
  }
}
