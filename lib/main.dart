import 'package:belajar_flutter/quote.dart';
import 'package:belajar_flutter/quote_card.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  int ninjaLevel = 0;

  addNumber() {
    setState(() {
      ninjaLevel += 1;
    });
  }

  List<Quote> quotes = [
    Quote(text: 'Be yourself; everyone else is already taken', author: 'ajidk'),
    Quote(
        text: 'I have nothing to declare except my genius', author: 'andrean'),
    Quote(
        text: 'Life is what happens when you’re busy.', author: 'john lennon'),
    Quote(
        text: 'The purpose of our lives is to be happy.', author: 'Diana lama'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: addNumber,
        backgroundColor: Colors.grey[800],
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
