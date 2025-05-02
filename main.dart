import 'package:flutter/material.dart';
import 'modules/safe_browser.dart';
import 'modules/profile_builder.dart';
import 'modules/content_feed.dart';

void main() => runApp(FramebrightDemoApp());

class FramebrightDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Framebright Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DemoHomePage(),
    );
  }
}

class DemoHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Framebright Modules')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Safe Browser'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SafeBrowserPage())),
          ),
          ListTile(
            title: Text('Profile & Avatar Builder'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileBuilderPage())),
          ),
          ListTile(
            title: Text('Content Cards Feed'),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ContentFeedPage())),
          ),
        ],
      ),
    );
  }
}