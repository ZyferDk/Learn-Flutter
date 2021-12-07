import 'package:belajar_flutter/services/jsonplaceholder.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void location() {
    Navigator.pushNamed(context, '/location');
  }

  Map data = {};
  String title = '';

  void getTodos() async {
    JsonPlaceHolder todos = JsonPlaceHolder(routes: 'todos/10');
    await todos.getResources();

    setState(() {
      title = todos.title;
    });
  }

  @override
  void initState() {
    super.initState();
    getTodos();
  }

  @override
  Widget build(BuildContext context) {
    // data = ModalRoute.of(context)!.settings.arguments;
    // ignore: avoid_print
    // print(data);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Text(title),
          ElevatedButton.icon(
            onPressed: location,
            icon: const Icon(Icons.edit_location),
            label: const Text('Edit Location'),
          ),
        ],
      )),
    );
  }
}
