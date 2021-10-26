// package: 
// file: service.proto

/* tslint:disable */
/* eslint-disable */

import * as jspb from "google-protobuf";

export class MatchRequest extends jspb.Message { 

    hasMyinfo(): boolean;
    clearMyinfo(): void;
    getMyinfo(): MatchRequest.MyInfo | undefined;
    setMyinfo(value?: MatchRequest.MyInfo): MatchRequest;

    hasPreferences(): boolean;
    clearPreferences(): void;
    getPreferences(): MatchRequest.Preferences | undefined;
    setPreferences(value?: MatchRequest.Preferences): MatchRequest;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): MatchRequest.AsObject;
    static toObject(includeInstance: boolean, msg: MatchRequest): MatchRequest.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: MatchRequest, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): MatchRequest;
    static deserializeBinaryFromReader(message: MatchRequest, reader: jspb.BinaryReader): MatchRequest;
}

export namespace MatchRequest {
    export type AsObject = {
        myinfo?: MatchRequest.MyInfo.AsObject,
        preferences?: MatchRequest.Preferences.AsObject,
    }


    export class MyInfo extends jspb.Message { 
        getGender(): MatchRequest.Gender;
        setGender(value: MatchRequest.Gender): MyInfo;
        getAge(): number;
        setAge(value: number): MyInfo;
        getLatitude(): number;
        setLatitude(value: number): MyInfo;
        getLongitude(): number;
        setLongitude(value: number): MyInfo;

        serializeBinary(): Uint8Array;
        toObject(includeInstance?: boolean): MyInfo.AsObject;
        static toObject(includeInstance: boolean, msg: MyInfo): MyInfo.AsObject;
        static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
        static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
        static serializeBinaryToWriter(message: MyInfo, writer: jspb.BinaryWriter): void;
        static deserializeBinary(bytes: Uint8Array): MyInfo;
        static deserializeBinaryFromReader(message: MyInfo, reader: jspb.BinaryReader): MyInfo;
    }

    export namespace MyInfo {
        export type AsObject = {
            gender: MatchRequest.Gender,
            age: number,
            latitude: number,
            longitude: number,
        }
    }

    export class Preferences extends jspb.Message { 
        getKilometersrange(): number;
        setKilometersrange(value: number): Preferences;

        hasGender(): boolean;
        clearGender(): void;
        getGender(): MatchRequest.Gender | undefined;
        setGender(value: MatchRequest.Gender): Preferences;
        getMinage(): number;
        setMinage(value: number): Preferences;
        getMaxage(): number;
        setMaxage(value: number): Preferences;

        serializeBinary(): Uint8Array;
        toObject(includeInstance?: boolean): Preferences.AsObject;
        static toObject(includeInstance: boolean, msg: Preferences): Preferences.AsObject;
        static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
        static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
        static serializeBinaryToWriter(message: Preferences, writer: jspb.BinaryWriter): void;
        static deserializeBinary(bytes: Uint8Array): Preferences;
        static deserializeBinaryFromReader(message: Preferences, reader: jspb.BinaryReader): Preferences;
    }

    export namespace Preferences {
        export type AsObject = {
            kilometersrange: number,
            gender?: MatchRequest.Gender,
            minage: number,
            maxage: number,
        }
    }


    export enum Gender {
    UNKNOWN = 0,
    MALE = 1,
    FEMALE = 2,
    NONBINARY = 3,
    }

}

export class MatchResponse extends jspb.Message { 

    hasChatkey(): boolean;
    clearChatkey(): void;
    getChatkey(): string | undefined;
    setChatkey(value: string): MatchResponse;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): MatchResponse.AsObject;
    static toObject(includeInstance: boolean, msg: MatchResponse): MatchResponse.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: MatchResponse, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): MatchResponse;
    static deserializeBinaryFromReader(message: MatchResponse, reader: jspb.BinaryReader): MatchResponse;
}

export namespace MatchResponse {
    export type AsObject = {
        chatkey?: string,
    }
}

export class Message extends jspb.Message { 
    getText(): string;
    setText(value: string): Message;

    serializeBinary(): Uint8Array;
    toObject(includeInstance?: boolean): Message.AsObject;
    static toObject(includeInstance: boolean, msg: Message): Message.AsObject;
    static extensions: {[key: number]: jspb.ExtensionFieldInfo<jspb.Message>};
    static extensionsBinary: {[key: number]: jspb.ExtensionFieldBinaryInfo<jspb.Message>};
    static serializeBinaryToWriter(message: Message, writer: jspb.BinaryWriter): void;
    static deserializeBinary(bytes: Uint8Array): Message;
    static deserializeBinaryFromReader(message: Message, reader: jspb.BinaryReader): Message;
}

export namespace Message {
    export type AsObject = {
        text: string,
    }
}
