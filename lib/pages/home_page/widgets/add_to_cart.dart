import 'package:dry_fruits/models/Fruit.dart';
import 'package:dry_fruits/pages/home_page/widgets/cart.dart';
import 'package:flutter/material.dart';

import '../home_page.dart';


class AddToCart extends StatefulWidget {
  //const AddToCart({Key? key}) : super(key: key);
  final Color color;
  final num price;
  final Fruit fruit;
  final int qty;
  AddToCart({Key? key, required this.price, required this.color, required this.fruit,required this.qty}): super(key: key);


  @override
  _AddToCartState createState() => _AddToCartState();
}

class _AddToCartState extends State<AddToCart> {


  int numItem = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                buildOutlineBButton(
                  icon: Icons.remove,
                  buttonPress:(){
                    if(numItem>1){
                      setState(() {
                        numItem--;
                      });
                    }
                },
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 7),
                child: Text(
                  (numItem).toString().padLeft(2,"0"),
                  style: Theme.of(context).textTheme.headline6,
                ),
                ),
                buildOutlineBButton(

                    icon: Icons.add,
                    buttonPress: (){
                      setState(() {
                        numItem++;
                      });

                    },
                ),
              ],
            ),

              //Text(widget.price.toString(),
             Text((widget.price*numItem).toString(),

              //subtitle: Text((item.price+qty.price).toString()),

              style: TextStyle(fontSize: 25),
              ),
          ],

        ),

        SizedBox(height: 60),
        SizedBox(
          height: 60,
          width: double.infinity,
          child: FlatButton(
            color: widget.color,

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
            onPressed: () {

              widget.fruit.qty=numItem;
              widget.price*numItem;
              cart.add(widget.fruit);
            widget.fruit.qty=1;
              //widget.fruit.qty+widget.fruit.price;

              cart = cart.toSet().toList();

              // Navigator.pushReplacementNamed(context, '/', MaterialPageRoute(builder: (context)=> HomePage()))
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context)=>HomePage()), (route) => false);
            },

            child: Text(
            'Add To Cart',
            style: TextStyle(
            fontSize: 17,fontWeight: FontWeight.bold, color: Colors.white,
          ),
            ),
          ),
        )
      ],


    );


  }
  SizedBox buildOutlineBButton({required IconData icon, required buttonPress}){
    return SizedBox(
      width: 40,
      height: 40,
      child: OutlineButton(
        highlightedBorderColor: Colors.transparent,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: buttonPress,
        child: Icon(icon),
      ),
    );
  }
}

