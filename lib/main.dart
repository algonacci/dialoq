import 'package:dialoq/pages/chat.dart';
import 'package:dialoq/pages/home.dart';
import 'package:dialoq/pages/multiple_question.dart';
import 'package:dialoq/pages/polling.dart';
import 'package:dialoq/pages/question.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/polling': (context) => const PollingPage(),
        '/question': (context) => const QuestionPage(),
        '/chat': (context) => const ChatRoomPage(),
        '/multiple': (context) => const MultipleQuestionPage(),
      },
    );
  }
}
