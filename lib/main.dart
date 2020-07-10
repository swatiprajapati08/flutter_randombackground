import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> list = [
    Color(0xFF283593),
    Color(0xFF9C27B0),
    Color(0xFF7C4DFF),
    Color(0xFF263238),
    Color(0xFF91E653),
    Color(0xFF880E4F),
    Color(0xFFF44336),
    Color(0xFFFF7043),
    Color(0xFF2E7032),
    Color(0xFFFFEA27),
    Color(0xFFF9A825),
    Color(0xFF80CBC4),
    Color(0xFFCDDC39),
    Color(0xFF7CB342),
  ];
  int index = 0;
  Color curr=Colors.pink[200];
  void setColor()
  {
    setState(() {
      index = Random().nextInt(list.length);
      curr=list[index];
      //print("set");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Random Color'),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: curr,
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              setColor();
              //print("Click");
            },
            child: Container(
              width: 200,
              height: 200,
              child: Image.network(
                  'https://i.giphy.com/media/gFbbtHab7AB5VOHN7m/giphy.webp'),
            ),
          ),
        ),
      ),
    );
  }
}
