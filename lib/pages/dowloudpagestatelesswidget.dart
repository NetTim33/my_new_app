import 'package:flutter/material.dart';

class DowloudpageStatelessWidget extends StatelessWidget {
  const DowloudpageStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[400],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[300],
          title: Text('My app dowloud page'),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LinearProgressIndicator(color: Colors.green, value: 75),
                Text(
                  '75%',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                Text(
                  'Нажмите для скачивание',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: const FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: null,
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }
}
