import 'package:agora_uikit/agora_uikit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: "e37edfc69f1c442c907575b271dbc6bb", channelName: "phong"),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Agora UIKit"),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            AgoraVideoViewer(client: client)
          ]),
          ),
    );
  }
}
