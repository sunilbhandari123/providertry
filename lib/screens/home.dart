import 'package:flutter/material.dart';
import 'package:provdertry/provider/examp.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const HomeP());
}

class HomeP extends StatelessWidget {
  const HomeP({Key? key}) : super(key: key);

  get onChanged => null;

  get value => null;

  @override
  Widget build(BuildContext context) {
    print("build");
    final provider = Provider.of<Examp>(context, listen: false);
    return Scaffold(
      appBar: AppBar(title: const Text('Multiprovider')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<Examp>(builder: (context, value, child) {
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
          Consumer<Examp>(builder: (context, value, child) {
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
