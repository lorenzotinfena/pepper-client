

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:chat_and_meet_client/proto/service.pb.dart';
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart';
import 'package:chat_and_meet_client/proto/service.pbgrpc.dart';
import 'package:chat_and_meet_client/proto/service.pbjson.dart';
import 'package:grpc/grpc_connection_interface.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
	late ServiceClient client;

	@override void initState() {
		var host = '10.0.2.2';
		if (kReleaseMode) host = 'EHHH VOLEEEEVIIIII';
		final channel = ClientChannel(host,
		port: 9090,
		options: ChannelOptions(credentials: ChannelCredentials.insecure()));
		client = ServiceClient(channel);
		super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*return Scaffold(
      backgroundColor: Colors.grey[800],
      body: Column(
        children: [
          Text
          TextButton(
          onPressed: ()=>{Navigator.pushNamed(context,'/about')},
          child: Text('About'),)
        ],
      )
    );*/
        return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.grey[700], borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                onPressed: () {
					final req = MatchRequest(
						myInfo: MatchRequest_MyInfo(
							age: 20,
							gender: MatchRequest_Gender.NonBinary,
							latitude: 0,
							longitude: 0),
						preferences: MatchRequest_Preferences(
							gender: MatchRequest_Gender.Unknown,
							kilometersRange: 1000,
							maxAge: 22,
							minAge: 18));
                  Navigator.pushReplacementNamed(context, '/chat', arguments: {'client': client, 'request': req});
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.yellow, fontSize: 25),
                ),
              ),
            ),
            FlatButton(
              onPressed: (){
                Navigator.pushNamed(context, '/about');
              },
              child: Text(
                'About',
                style: TextStyle(color: Colors.yellow, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}