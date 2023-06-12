import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'My Shoping List',
            style: TextStyle(fontSize: 25.0),
          ),
          actions: [
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Cart is empty')),
                );
              },
              icon: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          ],
        ),
        body: ShopingItem(),
      ),
    );
  }
}
class ShopingItem extends StatefulWidget {
  const ShopingItem({Key? key}) : super(key: key);

  @override
  State<ShopingItem> createState() => _ShopingItemState();
}

class _ShopingItemState extends State<ShopingItem> {


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
            title: Text(
              'Apple',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
            title: Text(
              'Banana',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
            title: Text(
              'Bread',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
            title: Text(
              'Milk',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListTile(
            leading: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
            title: Text(
              'Egg',
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
