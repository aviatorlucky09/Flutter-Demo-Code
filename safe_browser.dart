import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SafeBrowserPage extends StatelessWidget {
  final List<String> whitelist = ['flutter.dev', 'kids.nationalgeographic.com'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Safe Browser')),
      body: WebView(
        initialUrl: 'https://kids.nationalgeographic.com',
        javascriptMode: JavascriptMode.unrestricted,
        navigationDelegate: (navReq) {
          return whitelist.any((domain) => navReq.url.contains(domain))
              ? NavigationDecision.navigate
              : NavigationDecision.prevent;
        },
      ),
    );
  }
}