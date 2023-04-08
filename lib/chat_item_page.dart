import 'package:flutter/material.dart';

class ChatItemPage extends StatefulWidget {
  const ChatItemPage({Key? key}) : super(key: key);

  @override
  State<ChatItemPage> createState() => _ChatItemPageState();
}

class _ChatItemPageState extends State<ChatItemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('1'),
      ),
    );
  }
}
