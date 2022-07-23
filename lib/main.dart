import 'package:flutter/material.dart';
import 'package:provdertry/provider/api.dart';
import 'package:provdertry/provider/c_provider.dart';
import 'package:provdertry/provider/dark_provider.dart';
import 'package:provdertry/provider/examp.dart';
import 'package:provdertry/screens/Ap.dart';
import 'package:provdertry/screens/dark_example.dart';
import 'package:provdertry/screens/home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => Model()),
          ChangeNotifierProvider(create: (_) => Examp()),
          ChangeNotifierProvider(create: (_) => TheamChanger()),
          ChangeNotifierProvider(create: (_) => Athiprovider()),
        ],
        child: Builder(builder: (BuildContext context) {
          final themechanger = Provider.of<TheamChanger>(context);
          return MaterialApp(
              title: 'Flutter Demo',
              themeMode: themechanger.thememode,
              theme: ThemeData(
                primarySwatch: Colors.brown,
              ),
              darkTheme: ThemeData(
              brightness: Brightness.dark
              ),
              home: const Login());
        }));
  }
}