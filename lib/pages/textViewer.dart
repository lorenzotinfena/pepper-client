import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/widgets.dart';

class TextViewer extends StatefulWidget {
  @override
  _TextViewerState createState() => _TextViewerState();
}

class _TextViewerState extends State<TextViewer> {
  Future<String> loadAsset(String filename) async {
    return await rootBundle.loadString(filename);
  }

  @override
  Widget build(BuildContext context) {
    Map map = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: FutureBuilder<String>(
            future: loadAsset(map['filename']),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              } else if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError) {
                  exit(0);
                } else if (snapshot.hasData) {
                  return Markdown(data: snapshot.data!);
                } else {
                  exit(0);
                }
              } else {
                exit(0);
              }
            }),
      ),
    );
  }
}
