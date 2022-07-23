import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

class Athiprovider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  setLoading(value) {
    _loading = value;
  }

  void loin(String email, String password) async {
    setLoading(true);
    try {
      Response response = await post(
          Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': password});

      if (response.statusCode == 200) {
        print('Sucessful');
        setLoading(false);
      } else {
        print('Failed');
        setLoading(false);
      }
    } catch (e) {
      setLoading(false);
      print(e.toString());
    }
  }
}
