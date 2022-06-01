import 'dart:async';

import 'package:flutter/material.dart';

class DowloudpageStatefullWidget extends StatefulWidget {
  const DowloudpageStatefullWidget({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFirstAppState();
  }
}

class _MyFirstAppState extends State<DowloudpageStatefullWidget> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    _loading = false;
    _progressValue = 0.0;
    super.initState();
  }

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
            child: _loading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearProgressIndicator(
                          color: Colors.green, value: _progressValue),
                      Text(
                        '${(_progressValue * 100).round()}%',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ],
                  )
                : Text(
                    'Нажмите для скачивание',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _loading = !_loading;
              _updateProgres();
            });
          },
          backgroundColor: Colors.green,
          child: Icon(Icons.cloud_download),
        ),
      ),
    );
  }

  void _updateProgres() {
    const oneSec = const Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;

        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          _progressValue = 0.0;
          return;
        }
      });
    });
  }
}
