import 'package:flutter/material.dart';

class About extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Center(
        child: Text(
          'This is an open source application https://github.com/LorenzoTinfena/chat-and-meet-client'
        )
      ),
    );
  }
}