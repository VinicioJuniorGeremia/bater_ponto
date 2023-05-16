import 'package:flutter/material.dart';
import 'package:bater_ponto/pages/ponto_page.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Batida do Ponto',
      theme: ThemeData(

        primarySwatch: Colors.amber,
      ),
      home: HomePage(),
    );

  }

}
///fim