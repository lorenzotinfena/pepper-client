import 'package:chat_and_meet_client/pages/about.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/chat.dart';
import 'pages/about.dart';
void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/chat': (context) => ChatPage(),
      '/about': (context) => About(),
    },
));