import 'package:flutter/material.dart';

void main() => runApp(BelajarGridView());

class BelajarGridView extends StatelessWidget {
  final List alphabet = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve"
  ];
  final List clr = [
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.amber,
    Colors.blueAccent,
    Colors.green,
    Colors.blue,
    Colors.orange,
    Colors.red,
    Colors.amber,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dika Fahrozy"),
        ),
        body: GridView.count(
          crossAxisCount: 3,
          children: List.generate(alphabet.length, (index) {
            return Container(
              height: 100,
              child: Card(
                child: Center(
                    child: Text(alphabet[index],
                        style: TextStyle(color: Colors.white, fontSize: 20))),
                color: clr[index],
              ),
            );
          }),
        ),
      ),
    );
  }
}
