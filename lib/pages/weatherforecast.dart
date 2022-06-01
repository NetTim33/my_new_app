import 'package:flutter/material.dart';

class WeatherForecast extends StatelessWidget {
  const WeatherForecast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          centerTitle: true,
          backgroundColor: Colors.red,
          title: const Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.red,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Text(
                      'Enter City Name',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Узбекистан, Ташкент UZ",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                "Понедельник Май 16 2022",
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.sunny,
                        color: Colors.yellow,
                        size: 80,
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: const <Widget>[
                          Text(
                            '15 °F',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ],
                      ),
                      Row(
                        children: const <Widget>[
                          Text(
                            'Узбекистан Ташкент',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.ac_unit,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    '5',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '3',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    '20',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                '7-day Weather Forecast',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
