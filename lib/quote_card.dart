import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({Key? key, required this.quote, required this.delete})
      : super(key: key);

  final Quote quote;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[900],
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 18,
              ),
            ),
            Text(
              "#${quote.author}",
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 14,
              ),
            ),
            ElevatedButton.icon(
              onPressed: delete,
              icon: const Icon(
                Icons.delete,
                size: 18,
              ),
              label: const Text('Delete quote'),
            ),
          ],
        ),
      ),
    );
  }
}
