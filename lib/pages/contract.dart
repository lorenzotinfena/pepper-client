import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
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
                  data: '''
### This is an open source software

You can find the source code in the links below:
- [https://github.com/LorenzoTinfena/pepper-client](https://github.com/LorenzoTinfena/pepper-client)
- [https://github.com/LorenzoTinfena/pepper-server](https://github.com/LorenzoTinfena/pepper-server)

To continue using this application you must be at least **18** years of age, and you must read and agree to:
- [EULA](assets/EULA.md)
- [Privacy policy](assets/Privacy-policy.md)
- [Terms and conditions](assets/Terms-and-Conditions.md)
- [Disclaimer](assets/Disclaimer.md)
''',
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
                  child: Text('I Agree'),
                ),
              ],
            )
          ],
        )));
  }
}
