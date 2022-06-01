import 'package:flutter/material.dart';

class WeatherOneApp extends StatefulWidget {
  const WeatherOneApp({Key? key}) : super(key: key);

  @override
  State<WeatherOneApp> createState() => _WeatherOneAppState();
}

class _WeatherOneAppState extends State<WeatherOneApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Погода',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ],
        ),
        body: _buildBody(),

        //старый код
        // Container(
        // child: Row(
        //   children: [
        //     Text("Timur"),
        //     Text("Qobilov"),
        //   ],
        // ),
        // child: Column(
        //   children: [Text("timur"),
        //   Text("qobilov")
        //   ]
        // )
        // ),

        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.grey[900],
          ),
          child: BottomNavigationBar(
            showUnselectedLabels: true,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.green,
                ),
                label: 'Главная',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.support_agent,
                  color: Colors.blue,
                ),
                label: 'Подержка',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.chat,
                  color: Colors.yellow,
                ),
                label: 'Чат',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.verified_user,
                  color: Colors.red,
                ),
                label: 'Чат',
              ),
            ],
          ),
        )
        // floatingActionButton: FloatingActionButton(
        //     onPressed: () {
        //       print('Text');
        //     },
        //     child: const Text("Add"),
        //     backgroundColor: Colors.grey[900]),
        // backgroundColor: Colors.grey[100],
        );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                _weatherDescription(),
                const Divider(),
                _temperature(),
                const Divider(),
                _temperatureForecast(),
                const Divider(),
                _footerDatings(),
              ]),
        ))
      ],
    ),
  );
}

Image _headerImage() {
  return const Image(image: AssetImage("assets/images/5.jpg"));

  //const Image(image: NetworkImage(
  //'https://yandex.ru/images/search?pos=1&from=tabbar&img_url=https%3A%2F%2Fi.artfile.ru%2F2560x1700_540213_%5Bwww.ArtFile.ru%5D.jpg&text=%D0%BA%D0%B0%D1%80%D1%82%D0%B8%D0%BD%D0%BA%D0%B8&rpt=simage'),
  //fit: BoxFit.cover,
  //);
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: const <Widget>[
      Text(
        'Понедельник - Апрель 12',
        style: TextStyle(
          fontSize: 28.0,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
        style: TextStyle(color: Colors.black54),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
          ),
        ],
      ),
      const SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: const <Widget>[
              Text(
                '15° грфдусов',
                style: TextStyle(color: Colors.deepPurple),
              ),
            ],
          ),
          Row(
            children: const <Widget>[
              Text(
                'Узбекистан Ташкент',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10.0,
    children: List.generate(8, (int index) {
      return Chip(
        label: Text(
          '${index + 20}°C',
          style: const TextStyle(fontSize: 15.0),
        ),
        avatar: Icon(
          Icons.wb_cloudy,
          color: Colors.blue.shade300,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
          side: BorderSide(color: Colors.grey),
        ),
        backgroundColor: Colors.grey.shade100,
      );
    }),
  );
}

Row _footerDatings() {
  var stars = Row(
    mainAxisSize: MainAxisSize.min,
    children: const <Widget>[
      Icon(Icons.star, size: 15.0, color: Colors.yellow),
      Icon(Icons.star, size: 15.0, color: Colors.yellow),
      Icon(Icons.star, size: 15.0, color: Colors.yellow),
      Icon(Icons.star, size: 15.0, color: Colors.yellow),
      Icon(Icons.star, size: 15.0, color: Color.fromARGB(255, 105, 95, 2)),
    ],
  );
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      const Text(
        'Инфо из timurqobilov.uz',
        style: TextStyle(fontSize: 15.0),
      ),
      stars,
    ],
  );
}
