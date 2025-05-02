import 'package:flutter/material.dart';

class ContentFeedPage extends StatelessWidget {
  final List<Map<String, String>> cards = [
    {'title': 'Dinosaur Facts', 'description': 'Fun facts about dinosaurs.'},
    {'title': 'Space Quiz', 'description': 'Test your space knowledge!'},
    {'title': 'Animal Sounds', 'description': 'Learn animal sounds.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Content Feed')),
      body: ListView.builder(
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(12),
            child: ListTile(
              title: Text(cards[index]['title']!),
              subtitle: Text(cards[index]['description']!),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          );
        },
      ),
    );
  }
}