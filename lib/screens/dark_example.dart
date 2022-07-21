import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/dark_provider.dart';

class BlackTheme extends StatefulWidget {
const BlackTheme({Key? key}) : super(key: key);

  @override
  State<BlackTheme> createState() => _BlackThemeState();
}

class _BlackThemeState extends State<BlackTheme> {
  @override
  Widget build(BuildContext context) {
    final themechanger = Provider.of<TheamChanger>(context);
    return Scaffold( 
     appBar: AppBar(title: const Text('ThemeChanger'),),
     body: Column(
      children: [
            RadioListTile<ThemeMode >(
            title:const Text('Light Mode'),
            value: ThemeMode.light,
            groupValue: themechanger.thememode, 
            onChanged: themechanger.setTheme
             ),

            RadioListTile<ThemeMode>(
            title:const Text('Dark Mode'),
            value: ThemeMode.dark,
            groupValue: themechanger.thememode, 
            onChanged: themechanger.setTheme
             ),

          ],
        )
    );
  }
}