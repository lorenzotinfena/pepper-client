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

  late pb.ServiceClient client;
  String? ChatKey;
  late StreamController<pb.Message> streamController;
  @override
  void initState() {
    super.initState();


    
  }
  void Match(MatchRequest req) async {
    final res = await client.match(req);
    if (res.hasChatKey()){
      streamController = StreamController<pb.Message>();
      final responseStream = client.startChat(streamController.stream);
      streamController.add(pb.Message(text: res.chatKey));
      responseStream.listen((value) {
        final textMessage = types.TextMessage(
          author: _user_stranger,
          id: 'fghfghjhi',
          text: value.text,
        );

        _addMessage(textMessage);
      });
    }
    else{
      print('not found someone...');
    }
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSendPressed(types.PartialText message) {
    streamController.add(pb.Message(text: message.text));

    final textMessage = types.TextMessage(
      author: _user_me,
      id: 'fghfghjhi',
      text: message.text,
    );

    _addMessage(textMessage);
  }

  @override
  Widget build(BuildContext context) {
    Map map = ModalRoute.of(context)!.settings.arguments as Map;
    client = map['client'];
    Match(map['request']);


    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Chat(
          messages: _messages,
          onSendPressed: _handleSendPressed,
          user: _user_me,
        ),
      ),
    );
  }
}
