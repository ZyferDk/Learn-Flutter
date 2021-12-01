import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  location() {
    Navigator.pushNamed(context, '/location');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
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
