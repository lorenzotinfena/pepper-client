import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:intl/date_symbol_data_local.dart';
//import 'package:mime/mime.dart';
//import 'package:uuid/uuid.dart';
import 'package:chat_and_meet_client/proto/service.pb.dart';
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart' as pb;
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart';
import 'package:chat_and_meet_client/proto/service.pbjson.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<types.Message> _messages = [];
  final _user_me = const types.User(id: 'me');
  final _user_stranger = const types.User(id: 'stranger');
  bool built = false;
  late pb.ServiceClient client;
  late MatchRequest matchRequest;
  StreamController<pb.Message>? streamController;
  String status = "Searching for a match...";
  void Match() async {
    setState(() {
      _messages.clear();
      status = "Searching for a match...";
    });
    final res = await client.match(matchRequest);
    if (res.hasChatKey()) {
      streamController = StreamController<pb.Message>();
      final responseStream = client.startChat(streamController!.stream);
      
       setState(() {
         status = "Chatting";
       });


      streamController!.add(pb.Message(text: res.chatKey));
      streamController!.onCancel = () {
            Stop();
            setState(() {
              status = "";
            });
      };
      responseStream.listen((value) {
        final textMessage = types.TextMessage(
          author: _user_stranger,
          id: 'fghfghjhi',
          text: value.text,
        );

        _addMessage(textMessage);
      });
    } else {
      setState(() {
        status = "No match found";
      });
    }
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    if (streamController == null) return;
    streamController!.add(pb.Message(text: message.text));

    final textMessage = types.TextMessage(
      author: _user_me,
      id: 'fghfghjhi',
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void Stop(){
    if (streamController == null) return;
    streamController!.onCancel = null;
    streamController!.close();
    streamController = null;
  }

  @override
  Widget build(BuildContext context) {
    if (!built) {
      built = true;
      Map map = ModalRoute.of(context)!.settings.arguments as Map;
      client = map['client'];
      matchRequest = map['request'];
      Match();
    }

    return Scaffold(
      body: SafeArea(
        child: Hero(
          tag: "search",
          child: Column(
            children: [
              Expanded(
                child: Chat(
                  messages: _messages,
                  onSendPressed: _handleSendPressed,
                  user: _user_me,
                ),
              ),
              Row(
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Stop();
                              Navigator.pop(context);
                            },
                            child: const Text('Back'),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: (){
                              Stop();
                              Match();
                            },
                            child: const Text('Next'),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Text(status)
                ]
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
