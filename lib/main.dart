import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,
        child: Image(
          image: NetworkImage(
              'https://bringmethenews.com/.image/t_share/MTUzNjk4OTU3Njk5MDY1NTAy/fav-icons.png'),
        ));
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title:
            Text("Welcome to New World", style: TextStyle(color: Colors.black)),
      ),
      body: Center(
        child: Image(
          image: NetworkImage(
            "https://cdn.wccftech.com/wp-content/uploads/2016/09/spacee-2060x1288.jpg",
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        foregroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.settings_applications_rounded),
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16.0))),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'info',
          ),
        ],
      ),
    );
  }
}
