import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://linktr.ee/codefactory_official');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUrl);

  /// final result = WebViewController().loadRequest();
  /// 위아래 같음
  /// final controller = WebViewController();
  /// final result = controller.loadRequest();
  ///
  ///
  ///
  /// final controller2 = WebViewController()..loadRequest();
  /// 위아래 같음
  /// final controller2 = WebViewController();
  /// controller2.loadRequest();

  /// const 생성자를 만드려면 안에 값도 모두 선언할 수 있어야 되는데 controller엔 const 선언 불가
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              /// callback함수 -> 눌렀을때 다시 돌아와서 함수 실행
              controller.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
          ),
        ],
        title: Text('Dsound'),
        centerTitle: true,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
