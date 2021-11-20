import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'contract.dart';
import 'package:url_launcher/url_launcher.dart';
class About extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: SafeArea(
          child: Markdown(
              data: """
### This is an open source software

You can find the source code in the links below:
- [https://github.com/LorenzoTinfena/chat-and-meet-client](https://github.com/LorenzoTinfena/chat-and-meet-client)
- [https://github.com/LorenzoTinfena/chat-and-meet-server](https://github.com/LorenzoTinfena/chat-and-meet-server)

You agreed to:
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
        ));
  }
}
