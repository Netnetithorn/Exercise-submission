import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '6488026',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Load Image'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}): super(key: key) ;

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          ProductBox(
            name: "Strawberry",
            description: "Strawberry fruit",
            price: 200,
            image: "strawberry.jpg"),
          ProductBox(
            name: "Blueberry",
            description: "Blueberry fruit",
            price: 150,
            image: "blueberry.jpg"),
        ]
        )
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox({Key? key, required this.name,required this.description,required this.price,required this.image}) : super(key: key);

  final String name;
  final String description;
  final int price;
  final String image;
            Widget build(BuildContext context) {
                  return Container(
                  padding: EdgeInsets.all(2),
                  height: 120,
                  child: Card(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                    Image.asset("assets/appimages/" + image),
            Expanded(
                  child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                              Text(this.name,
                              style: TextStyle(fontWeight:
                              FontWeight.bold)),
                              Text(this.description),
                              Text("Price: " + this.price.toString()),
                          ],
                          )))
                        ])));
              } 
}

/*
<a href="https://www.freepik.com/free-photo/strawberry-berry-levitating-white-background_26484873.htm#query=fruit%20png&position=9&from_view=keyword&track=ais&uuid=9780df15-6514-425c-aab4-d97aa07837c4">Image by artbutenkov</a> on Freepik
<a href="https://www.freepik.com/free-photo/ripe-blueberries-levitate-white-background_27508839.htm">Image by artbutenkov</a> on Freepik
*/
