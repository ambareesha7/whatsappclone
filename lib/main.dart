import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Whatsapp clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: Color(0xFF075E54),
          accentColor: Color(0xFF128C7E),
        ),
        home: Scaffold(
          body: Center(
            child: Text("Home Page"),
          ),
        ));
  }
}
