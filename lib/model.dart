import 'package:flutter/foundation.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class Model extends ChangeNotifier {
  String title = 'Before Change';
  void changeValue() {
    SfPdfViewer.asset('assets/folder/horror.pdf');
    notifyListeners();
  }
}
