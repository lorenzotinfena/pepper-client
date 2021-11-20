import 'package:chat_and_meet_client/pages/about.dart';
import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'pages/chat.dart';
import 'pages/about.dart';
import 'pages/contract.dart';
import 'pages/textViewer.dart';
void main() => runApp(MaterialApp(
    routes: {
      '/contract': (context) => Contract(),
      '/textViewer': (context) => TextViewer(),
      '/home': (context) => Home(),
      '/chat': (context) => ChatPage(),
      '/about': (context) => About(),
    },
    initialRoute: '/contract',
));