import 'package:flutter/material.dart';
import 'package:provdertry/provider/c_provider.dart';
import 'package:provdertry/provider/examp.dart';
import 'package:provdertry/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider (
      providers: [
          ChangeNotifierProvider(create: (_) => Model()),
          ChangeNotifierProvider(create: (_) => Examp()),
      ],
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
      primarySwatch: Colors.blue,
      ),
      home: const HomeP()));

  }
}


