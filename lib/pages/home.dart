import 'dart:html';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Home> {
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
                  Navigator.pushNamed(context, '/chat');
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