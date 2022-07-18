import 'package:flutter/material.dart';
import 'package:provdertry/provider/examp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("build");
    final provider = Provider.of<Examp>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Multiprovider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(builder: (context, value, child) {
            var value;
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
          const SizedBox(
            height: 25,
          ),
          Consumer(builder: (context, value, child) {
            var value;
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 60,
                    color: Colors.pink.withOpacity(value.value),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: 60,
                  color: Colors.brown.withOpacity(value.value),
                )),
              ],
            );
          }),
        ],
      ),
    );
  }
}
