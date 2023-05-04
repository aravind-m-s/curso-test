import 'package:coding_test/view/screen_explore/screen_explore.dart';
import 'package:coding_test/view/screen_topic/screen_topic.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScreenTopic(),
    );
  }
}
