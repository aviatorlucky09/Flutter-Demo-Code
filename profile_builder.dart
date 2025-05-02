import 'package:flutter/material.dart';

class ProfileBuilderPage extends StatefulWidget {
  @override
  _ProfileBuilderPageState createState() => _ProfileBuilderPageState();
}

class _ProfileBuilderPageState extends State<ProfileBuilderPage> {
  String _name = '';
  int _selectedAvatar = 0;

  final avatars = [
    Icons.sentiment_satisfied,
    Icons.sentiment_neutral,
    Icons.sentiment_very_satisfied,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Create Profile')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Enter your name'),
              onChanged: (val) => setState(() => _name = val),
            ),
            SizedBox(height: 20),
            Text('Choose an Avatar:'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(avatars.length, (index) {
                return IconButton(
                  icon: Icon(avatars[index],
                      color: _selectedAvatar == index ? Colors.blue : Colors.grey, size: 40),
                  onPressed: () => setState(() => _selectedAvatar = index),
                );
              }),
            ),
            SizedBox(height: 20),
            Text('Name: $_name'),
            Icon(avatars[_selectedAvatar], size: 50),
          ],
        ),
      ),
    );
  }
}