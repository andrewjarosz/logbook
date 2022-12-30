import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // reference for the box as _myBox
  final _myBox = Hive.box('mybox');

  //write data method
  void writeData() {
    _myBox.put(1, 'Andy');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {},
              child: Text('Write'),
              color: Colors.green[200],
            ),

            MaterialButton(
              onPressed: () {},
              child: Text('Read'),
              color: Colors.blue[200],
            ),

            MaterialButton(
              onPressed: () {},
              child: Text('Delete'),
              color: Colors.red[200],
            ),
          ]
        )
      )
    );
  }
}