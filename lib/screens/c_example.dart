import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import '../provider/c_provider.dart';



class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<Model>(context, listen: false);
    const Text('all okay?');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Column(
        children: [
          Center(
            child: Consumer<Model>(
              builder: (context, nModel, child) {
                return Text(
                  model.title,
                  style:const  TextStyle(color: Colors.white),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
            Text('Before change'),
          ]),
          const SizedBox(
            height: 20,
          ),
          InkWell(
              child: Container(
                height: 30,
                width: 80,
                color: Colors.black,
                child: const Center(
                  child: Text(
                    'Change',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SfPdfViewer.asset('assets/folder/horror.pdf')));
              })
        ],
      ),
    );
  }
}


