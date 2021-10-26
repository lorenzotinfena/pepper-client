import React, { useEffect, useState, useRef } from 'react';
import PropTypes from 'prop-types';
import { useFirestoreQuery } from '../hooks';
import { IServiceClient, ServiceClient } from '../proto/service_grpc_pb'
import { MatchRequest, MatchResponse, Message as Mes } from '../proto/service_pb'
import { credentials } from '@grpc/grpc-js'
// Components
import Message from './Message';
import { env } from 'process';
import { NamespaceBody } from 'typescript';

const Channel = () => {
  // const db = firebase.firestore();
  //const messagesRef = db.collection('messages');
  //const messages = useFirestoreQuery(
  //  messagesRef.orderBy('createdAt', 'desc').limit(100)
  //);

  const [newMessage, setNewMessage] = useState('');

  const inputRef = useRef();
  const bottomListRef = useRef();



  useEffect(() => {
    if (inputRef.current) {
      inputRef.current.focus();
    }
  }, [inputRef]);

  const handleOnChange = e => {
    setNewMessage(e.target.value);
  };


  const [key, setkey] = useState<string>();

  var client = new ServiceClient('host.docker.internal:33005',
    credentials.createInsecure());
  const re: MatchRequest.AsObject = {
    myinfo: { gender: 3, age: 18, latitude: 0, longitude: 0 },
    preferences: { kilometersrange: 1000, gender: 0, minage: 18, maxage: 22 }
  }
  var req = new MatchRequest()
  var myInfo = new MatchRequest.MyInfo()
  myInfo.setGender(MatchRequest.Gender.NONBINARY)
  myInfo.setAge(18)
  myInfo.setLatitude(0)
  myInfo.setLongitude(0)
  var preferences = new MatchRequest.Preferences()
  preferences.setGender(MatchRequest.Gender.UNKNOWN)
  preferences.setKilometersrange(1000)
  preferences.setMinage(18)
  preferences.setMaxage(22)
  req.setMyinfo(myInfo)
  req.setPreferences(preferences)

  client.match(req, function (err, response) {
    if (response.hasChatkey()) {
      setkey(response.getChatkey())
    }
  });


  const handleOnSubmit = e => {
    e.preventDefault();

    const trimmedMessage = newMessage.trim();
    if (trimmedMessage) {
      // Add new message in Firestore
      /*messagesRef.add({
        text: trimmedMessage,
        createdAt: firebase.firestore.FieldValue.serverTimestamp(),
        uid,
        displayName,
        photoURL,
      });*/
      console.log(trimmedMessage)
      // Clear input field
      setNewMessage('');
      // Scroll down to the bottom of the list
      //bottomListRef.current.scrollIntoView({ behavior: 'smooth' });
    }
  };


  return <div id="wrapper">
    <div id="menu">
      Welcome, <b></b>
      <a id="exit" href="#">Exit Chat</a>
    </div>

    <div id="chatbox"></div>

    <form onSubmit={handleOnSubmit} name="message">
      <input name="usermsg" type="text" id="usermsg" />
      <input name="submitmsg" type="submit" id="submitmsg" value="Send" />
    </form>
  </div>
};

export default Channel;
