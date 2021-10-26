import React, { Component } from 'react'
import ChatInput from './ChatInput'
import ChatMessage from './ChatMessage'

import { ServiceClient, IServiceClient } from './proto/service_grpc_pb'
import { MatchRequest, MatchResponse, Message } from './proto/service_pb'
import { credentials } from '@grpc/grpc-js'
import { env } from 'process';

class Chat extends Component {
	state = {
		key: 'DEFAULT',
		messages: [],
	}

	/*ws = new WebSocket(URL)*/

	componentDidMount() {
		/*this.ws.onopen = () => {
		  // on connecting, do nothing but log it to the console
		  console.log('connected')
		}
	
		this.ws.onmessage = evt => {
		  // on receiving a message, add it to the list of messages
		  const message = JSON.parse(evt.data)
		  this.addMessage(message)
		}
	
		this.ws.onclose = () => {
		  console.log('disconnected')
		  // automatically try to reconnect on connection loss
		  this.setState({
			ws: new WebSocket(URL),
		  })
		}*/
		var client = new ServiceClient('host.docker.internal:42191',
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
				console.log('key: ' + response.getChatkey())
				this.setState(state => ({key: response.getChatkey()}))
			}
		});
	}

	addMessage = message =>
		this.setState(state => ({ messages: [message, ...state.messages] }))

	submitMessage = messageString => {
		// on submitting the ChatInput form, send the message, add it to the list and reset the input
		const message = { message: messageString }
		//this.ws.send(JSON.stringify(message))
		this.addMessage(message)
	}

	render() {
		return (
			<div>
				<label htmlFor="name">
					Name:&nbsp;
					<input
						type="text"
						id={'name'}
						placeholder={'Enter your name...'}
						value={this.state.key}
						onChange={e => this.setState({ name: e.target.value })}
					/>
				</label>
				<ChatInput
					onSubmitMessage={messageString => this.submitMessage(messageString)}
				/>
				{this.state.messages.map((message, index) =>
					<ChatMessage
						key={index}
						message={message.message}
						name={message.key}
					/>,
				)}
			</div>
		)
	}
}

export default Chat
