import 'package:dry_fruits/pages/home_page/widgets/add_to_cart.dart';
import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  const Checkout({Key? key}) : super(key: key);

  //Consumer({Key? key, required Widget builder(BuildContext context,  value, Widget? child), Widget? child})

  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckOut'),

      ),
      // body: Consumer<Cart>(builder:(context, cart,child),
      //  return ListView.builder(itemCount: cart.basketitem.length, itemBuilder: (context, i){
      //       return Card(child: ListTile(title: Text("${cart.basketitem[i].fruits}"),
      //         trailing: IconButton(icon: Icon(Icons.remove),onPressed: () {}),
      //       ),
      //       );
      //     })
      // )
    );
  }
}
