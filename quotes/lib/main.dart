import 'package:flutter/material.dart';
import 'package:quotes/quote.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote("Author01", "The purpose of our lives is to be happy"),
    Quote("Author02",
        "Life is what happens when you’re busy making other plans."),
    Quote("Author03", "Get busy living or get busy dying"),
    Quote("Author04",
        "Never let the fear of striking out keep you from playing the game"),
    Quote("Author05", "Turn your wounds into wisdom"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return Text("${quote.text} - ${quote.author}");
        }).toList(),
      ),
    );
  }
}
