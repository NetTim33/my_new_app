import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class StatelessWidgetPage extends StatelessWidget {
  const StatelessWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        backgroundColor: Colors.blueGrey[600],
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[500],
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(
            'My App',
            style:
                TextStyle(color: Colors.grey[850], fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: _slider(),
      ),
    );
  }
}

List<String> images = ['1.jpg', '2.jpg', '3.jpg', '4.jpg'];

Widget _slider() {
  return Column(
    children: [
      CarouselSlider(
        options: CarouselOptions(
            height: 200.0,
            enlargeCenterPage: true,
            autoPlayInterval: const Duration(seconds: 4),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlay: true),
        items: images.map((index) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/$index'),
                  ),
                ),
                // child: Text(
                //   'text $index',
                //   style: const TextStyle(fontSize: 16.0),            // Text для карусел слайдера
                // ),
              );
            },
          );
        }).toList(),
      ),
      _column(),
    ],
  );
}

List<Map<String, String>> data = [
  {
    '1': '1',
    '2': '2',
    '3': '3',
    '4': '4',
  }
];

Widget _column() => Expanded(
      child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            // var index;
            return Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/$index"),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-5, -5),
                            color: Colors.grey,
                          ),
                        ]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          data[index]['1']!,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 150,
                    height: 150,
                    padding: EdgeInsets.only(bottom: 5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/images/$index"),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 3,
                            offset: Offset(-5, -5),
                            color: Colors.grey,
                          ),
                        ]),
                    child: Center(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          data[index]['2']!,
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
