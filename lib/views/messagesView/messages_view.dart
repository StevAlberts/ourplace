import 'package:flutter/material.dart';

class MessagesView extends StatefulWidget {
  const MessagesView({Key? key}) : super(key: key);

  @override
  _MessagesViewState createState() => _MessagesViewState();
}

class _MessagesViewState extends State<MessagesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        title: const Text("Messages"),
      ),
      body: _buildMessagesViewBody(),
    );
  }

  Widget _buildMessagesViewBody() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.chat_bubble_outline),
            Text("No new messages"),
          ],
        ),
      );
  }
}
