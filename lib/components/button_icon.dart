import 'package:flutter/material.dart';

class ButtonIcon extends StatelessWidget {
  const ButtonIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Column(
      children: [
        const Icon(
          Icons.airport_shuttle_rounded,
          color: Colors.red,
          size: 50,
        ),
        ElevatedButton(
          onPressed: null,
          child: const Text(
            'Button 1',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.green,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: null,
          child: const Text(
            'Button 2',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.yellow,
            ),
          ),
        ),
        Container(
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Hello bre'),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          margin: const EdgeInsets.all(10),
          color: Colors.lightBlueAccent,
        ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text('Padding bre'),
        ),
        const Text(
          'Row',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Hello World!'),
            ElevatedButton(
              onPressed: null,
              child: const Text(
                'Button 3',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(8),
              color: Colors.lightGreen,
              child: const Text('Inside Container'),
            )
          ],
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.indigo,
                child: const Text('column 1'),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                color: Colors.lime,
                child: const Text('column 2'),
              ),
              Container(
                padding: const EdgeInsets.all(30),
                color: Colors.orange,
                child: const Text('column 3'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
