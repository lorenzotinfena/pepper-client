import 'package:chat_and_meet_client/proto/service.pbenum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:chat_and_meet_client/proto/service.pb.dart';
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart';
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart';
import 'package:chat_and_meet_client/proto/service.pbjson.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

class Contract extends StatefulWidget {
  @override
  _ContractState createState() => _ContractState();
}

void go(filename_to_view, context) =>
    Navigator.pushNamed(context, '/textViewer',
        arguments: {'filename': filename_to_view});

class _ContractState extends State<Contract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 300,
              child: Markdown(
                  data: """
### This is an open source software

You can find the source code in the links below:
- [https://github.com/LorenzoTinfena/chat-and-meet-client](https://github.com/LorenzoTinfena/chat-and-meet-client)
- [https://github.com/LorenzoTinfena/chat-and-meet-server](https://github.com/LorenzoTinfena/chat-and-meet-server)

To continue using this application, you must agree to:
1. [EULA](assets/EULA.md)
2. [Privacy policy](assets/Privacy-policy.md)
3. [Terms and conditions](assets/Terms-and-Conditions.md)
4. [Disclaimer](assets/Disclaimer.md)
""",
                  onTapLink: (text, url, title) {
                    if (RegExp('^http').hasMatch(url!))
                      launch(url!);
                    else
                      go(url, context);
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    exit(0);
                  },
                  child: Text('Exit'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pushReplacementNamed(context, '/home');
                    });
                  },
                  child: Text('I agree'),
                ),
              ],
            )
          ],
        )));
  }
}
