import 'package:flutter/material.dart';
import 'package:travel_app/ui/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, fontFamily: 'Poppins'),
    );
  }
}
