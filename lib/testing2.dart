import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Variable Height List Tiles'),
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  // Sample list of texts with varying lengths
  final List<String> texts = [
    "Short text",
    "This is a slightly longer text",
    "Here is an even longer text that should take more space",
    "A very long text that will take multiple lines to display correctly in the list view item and adjust its height accordingly",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: texts.length,
      itemBuilder: (context, index) {
        return MyListTile(text: texts[index]);
      },
    );
  }
}

class MyListTile extends StatelessWidget {
  final String text;

  MyListTile({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            text,
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
