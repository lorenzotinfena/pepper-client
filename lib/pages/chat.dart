import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';
import 'package:grpc/grpc_web.dart';
import 'package:intl/date_symbol_data_local.dart';
//import 'package:mime/mime.dart';
//import 'package:uuid/uuid.dart';
import 'package:chat_and_meet_client/proto/service.pb.dart';
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart';
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

  @override
  void initState() {
    var bo = GrpcWebClientChannel.xhr(Uri.http('127.0.0.1:8080', ''));
    var nat = ClientChannel('localhost', port: 8080, options: const ChannelOptions(credentials: ChannelCredentials.insecure()));
    final client = ServiceClient(bo);
    var req = MatchRequest(myInfo: MatchRequest_MyInfo(age: 18, gender: MatchRequest_Gender.NonBinary, latitude: 0, longitude: 0),preferences: MatchRequest_Preferences(gender: MatchRequest_Gender.Unknown, kilometersRange: 1000,maxAge: 22, minAge: 18));
    client.match(req);
    super.initState();
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }




  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user_me,
      //createdAt: DateTime.now().millisecondsSinceEpoch,
      id: 'fghfghjhi',
      text: message.text,
    );

    _addMessage(textMessage);
  }


  @override
  Widget build(BuildContext context) {
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