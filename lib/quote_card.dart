import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({Key? key, required this.quote}) : super(key: key);

  final Quote quote;

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
          ],
        ),
      ),
    );
  }
}
