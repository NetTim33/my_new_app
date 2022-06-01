import 'package:flutter/material.dart';
import 'package:my_new_app/pages/counter.dart';
import 'package:my_new_app/pages/dowloudpagestatefullwidget.dart';
import 'package:my_new_app/pages/dowloudpagestatelesswidget.dart';
import 'package:my_new_app/pages/form_regiter.dart';
import 'package:my_new_app/pages/statelleswidgetpage.dart';
import 'package:my_new_app/pages/weatherforecast.dart';
import 'package:my_new_app/pages/weatheroneapp.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Главная'),
          centerTitle: true,
        ),
        body: HomePage(),
      ),
      routes: {
        '/weatheroneapp': (context) => WeatherOneApp(),
        '/weatherforecast': (context) => WeatherForecast(),
        '/statelleswidgetpage': (context) => StatelessWidgetPage(),
        '/from_regiter': (context) => RegisterFormPage(),
        '/dowloudpagestatelesswidget': (context) =>
            DowloudpageStatelessWidget(),
        '/dowloudpagestatefullwidget': (context) =>
            DowloudpageStatefullWidget(),
        '/counter': (context) => MyCounter(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              FloatingActionButton(
                  child: Text('1'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/weatheroneapp');
                  }),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Text('2'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/weatherforecast');
                  }),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Text('3'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/statelleswidgetpage');
                  }),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Text('4'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/from_regiter');
                  }),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Text('5'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dowloudpagestatelesswidget');
                  }),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Text('6'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/dowloudpagestatefullwidget');
                  }),
            ],
          ),
          Row(
            children: [
              FloatingActionButton(
                  child: Text('7'),
                  onPressed: () {
                    Navigator.pushNamed(context, '/counter');
                  }),
            ],
          ),
        ],
      ),
    );
  }
}
