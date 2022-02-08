import 'package:dry_fruits/models/Fruit.dart';
import 'package:dry_fruits/pages/home_page/widgets/cart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'widgets/body.dart';

class HomePage extends StatelessWidget {
  late final int index;
  //late final Fruit fruit;

  HomePage({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> _scafflodKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      key:_scafflodKey,

      drawer:  Drawer(
        child: ListView(
          children: <Widget>[
             UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.pinkAccent,Colors.white]
                )
                //color: Colors.red[800],
              ),
              accountName: Text('Guest'),
              accountEmail: Text('guestemail@email.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://avatarfiles.alphacoders.com/848/84855.jpg'),
              ),
            ),

            ListTile(
              leading: Icon(Icons.call),
                title: Text('call us'),

                // onTap: () {
                // Navigator.pushReplacementNamed;
                //}
              // dense: true,
              // onTap: () => tel:+918698171281,


            ),
            Divider(thickness: 2),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text(
                'Favorites',
                //style: TextStyle(fontSize: 24.0),
              ),

            ),
          ],


        ),

      ),

      appBar: AppBar(

        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.red,Colors.purple]
              )
          ),
        ),

        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black),
          onPressed: () => _scafflodKey.currentState!.openDrawer()),



        actions: [


          GestureDetector(
            child: Stack(
              alignment: Alignment.centerLeft,
              children: <Widget>[
                Icon(
                  Icons.shopping_cart,
                ),
                //if (cart.length > 0)
                  Padding(

                    padding: const EdgeInsets.only(left: 20.0),
                    child: CircleAvatar(

                      radius: 10.0,
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      child: Text(
                        cart.length.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            onTap: () {
              if (cart.isNotEmpty) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CartScreen(cart),
                  ),
                );
              }
              else
                print('cart is empty');
            },
          )
        ],
      ),
      backgroundColor: Colors.tealAccent,


      body: Body(),


    );

  }

}
