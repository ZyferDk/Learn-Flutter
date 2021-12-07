import 'dart:convert';
import 'package:http/http.dart' as http;

class JsonPlaceHolder {
  JsonPlaceHolder({required this.routes});

  String routes;
  String data = '';
  String title = '';

  Future<void> getResources() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/$routes');
    var response = await http.get(url);

    Map data = jsonDecode(response.body);

    title = data['title'];

    // ignore: avoid_print
    print('todos : $data');
  }
}
