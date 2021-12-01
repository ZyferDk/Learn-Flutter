import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({Key? key}) : super(key: key);

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  void addCounter() {
    setState(() {
      counter += 1;
    });
  }

  void getData() async {
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'yoshi';
    });

    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'vegan, musician & egg collector';
    });

    // ignore: avoid_print
    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
    // ignore: avoid_print
    print('hey there!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
        title: const Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: addCounter,
          child: Text('$counter'),
        ),
      ),
    );
  }
}