import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginWebViewScreen extends StatefulWidget {
  final url;
  LoginWebViewScreen(this.url);
  @override
  createState() => _LoginWebViewScreenState(this.url);
}

class _LoginWebViewScreenState extends State<LoginWebViewScreen> {
  var _url;
  final _key = UniqueKey();
  _LoginWebViewScreenState(this._url);
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    print(_url);
    return Scaffold(
        body: Column(
      children: [
        Expanded(
            child: WebView(
          userAgent: "random",
          key: _key,
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: _url,
          navigationDelegate: (NavigationRequest request) {
            if (request.url.contains('result')) {
              // I was tring to use webviewController to reload the url, but this creates a loop that kept reloading the webview :(
              var url = Uri.parse(request.url);
              Get.toNamed('/home', arguments: {
                'jwt': url.queryParameters['jwt'],
                'token': url.queryParameters['token']
              });
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ))
      ],
    ));
  }
}
