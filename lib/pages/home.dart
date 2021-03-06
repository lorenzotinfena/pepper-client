import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pepper_client/proto/service.pbgrpc.dart';
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:flutter/services.dart' show rootBundle;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late ServiceClient client;
  MatchRequest matchRequest = MatchRequest(
      myInfo:
          MatchRequest_MyInfo(gender: MatchRequest_Gender.NonBinary, age: null),
      preferences: MatchRequest_Preferences(minAge: 18, maxAge: 25));
  String gender = "Non binary";
  String targetGender = "Any";
  RangeValues currentRangeValues = const RangeValues(18, 25);

  @override
  void initState() {
    final ClientChannel channel;
    if (kDebugMode) {
      channel = ClientChannel('10.0.2.2',
          port: 9090,
          options: ChannelOptions(credentials: ChannelCredentials.insecure()));

      client = ServiceClient(channel);
    } else {
      rootBundle.load('assets/certificate.pem').then((trustedRoot) {
        final channelCredentials = new ChannelCredentials.secure(
          certificates: trustedRoot.buffer.asUint8List(),
          onBadCertificate: (certificate, host) => true,
        );

        final ClientChannel channel = ClientChannel('129.152.18.163',
            port: 9090,
            options: ChannelOptions(credentials: channelCredentials));

        client = ServiceClient(channel);
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text("My info:"),
              DropdownButton<String>(
                value: gender,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    gender = newValue!;
                  });
                  switch (newValue) {
                    case 'Male':
                      matchRequest.myInfo.gender = MatchRequest_Gender.Male;
                      break;
                    case 'Female':
                      matchRequest.myInfo.gender = MatchRequest_Gender.Female;
                      break;
                    case 'Non binary':
                      matchRequest.myInfo.gender =
                          MatchRequest_Gender.NonBinary;
                      break;
                  }
                },
                items: <String>['Non binary', 'Male', 'Female']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Age',
                      hintText: 'Enter age'),
                  onChanged: (String? age) {
                    if (age != null) matchRequest.myInfo.age = int.parse(age!);
                  },
                ),
              ),
              SizedBox(height: 30),
              Text(
                  "Enter your preferences about gender and age range of the stranger:"),
              DropdownButton<String>(
                value: targetGender,
                icon: const Icon(Icons.arrow_downward),
                iconSize: 24,
                elevation: 16,
                style: const TextStyle(color: Colors.deepPurple),
                underline: Container(
                  height: 2,
                  color: Colors.deepPurpleAccent,
                ),
                onChanged: (String? newValue) {
                  setState(() {
                    targetGender = newValue!;
                  });
                  switch (newValue) {
                    case 'Any':
                      matchRequest.preferences.gender =
                          MatchRequest_Gender.Unknown;
                      break;
                    case 'Male':
                      matchRequest.preferences.gender =
                          MatchRequest_Gender.Male;
                      break;
                    case 'Female':
                      matchRequest.preferences.gender =
                          MatchRequest_Gender.Female;
                      break;
                    case 'Non binary':
                      matchRequest.preferences.gender =
                          MatchRequest_Gender.NonBinary;
                      break;
                  }
                },
                items: <String>['Any', 'Non binary', 'Male', 'Female']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              RangeSlider(
                values: currentRangeValues,
                min: 18,
                max: 100,
                divisions: 82,
                labels: RangeLabels(
                  currentRangeValues.start.round().toString(),
                  currentRangeValues.end.round().toString(),
                ),
                onChanged: (RangeValues values) {
                  setState(() {
                    currentRangeValues = values;
                  });
                  matchRequest.preferences.minAge = values.start.toInt();
                  matchRequest.preferences.maxAge = values.end.toInt();
                },
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextField(
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      fontSize: 15.0, height: 1.0, color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText:
                          'Stranger max distance range (not yet supported)',
                      hintText: 'Enter stranger max distance range'),
                  enabled: false,
                  onChanged: (String? range) {
                    if (range != null)
                      matchRequest.preferences.kilometersRange =
                          int.parse(range!);
                  },
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(20)),
                child: Hero(
                  tag: "search",
                  child: FlatButton(
                    onPressed: () {
                      if (matchRequest.myInfo.age < 18 ||
                          matchRequest.myInfo.age > 100) {
                        showAlertDialog(context);
                      } else {
                        Navigator.pushNamed(context, '/chat', arguments: {
                          'client': client,
                          'request': matchRequest
                        });
                      }
                    },
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.yellow, fontSize: 25),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                },
                child: Text(
                  'About',
                  style: TextStyle(color: Colors.yellow, fontSize: 15),
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
          ),
        ),
      ),
    );
  }
}

showAlertDialog(BuildContext context) {
  // Create button
  Widget okButton = FlatButton(
    child: Text("OK"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Please provide valid informations"),
    //content: Text("This is an alert message."),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
