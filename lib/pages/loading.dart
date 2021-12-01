import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var testing = 'Loading Screen';

  void getData() async {
    var url = Uri.parse('https://jsonplaceholder.typicode.com/todos/5');
    var response = await http.get(url);

    Map data = jsonDecode(response.body);

    String title = await Future.delayed(const Duration(seconds: 3), () {
      return data['title'];
    });

    print(title);
  }

  void getTime() async {
    var url = Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Jakarta');
    var response = await http.get(url);
    Map data = jsonDecode(response.body);
    // print(data);
    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1, 3);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    // getData();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade400,
      body: Center(
        child: Text(
          testing,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );
  }
}
