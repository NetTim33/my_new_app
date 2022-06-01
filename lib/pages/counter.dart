import 'package:flutter/material.dart';

class MyCounter extends StatelessWidget {
  const MyCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'Mocondo'),
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text('MyCounter'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tap \"-"\ to decrement',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Mocondo'),
                ),
                Text(
                  'Tap \"+"\ to increment',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Mocondo'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class MyCounterWidget extends StatefulWidget {
//   @override
//   _MyCounterWidgetState createState() => _MyCounterWidgetState();
// }

// class _MyCounterWidgetState extends State<MyCounterWidget> {
//   int _count = 50;
// }
