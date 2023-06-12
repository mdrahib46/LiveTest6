import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  final List<String> shoppingItems = [
    'Apple',
    'Banana',
    'Bread',
    'Mild',
    'Egg',
  ];


  MySnackBar(snackBarMsg, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(snackBarMsg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Shoping List',
          style: TextStyle(fontSize: 25.0),
        ),
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar('Cart is empty', context);
            },
            icon: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: shoppingItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Icon(
                Icons.shopping_basket,
                size: 30,
              ),
              title: Text(shoppingItems[index], style: TextStyle(
                fontSize: 30.0,
              ),),
            ),
          );
        },
      ),
    );
  }
}
