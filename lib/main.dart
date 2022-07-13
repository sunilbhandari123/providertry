import 'package:flutter/material.dart';
import 'package:provdertry/model.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider (
           create :(_) => Model(),
    child: MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Homepage()));

  }
}


