// Original file: proto/service.proto


// Original file: proto/service.proto

export enum _MatchRequest_Gender {
  Unknown = 0,
  Male = 1,
  Female = 2,
  NonBinary = 3,
}

export interface _MatchRequest_MyInfo {
  'gender'?: (_MatchRequest_Gender | keyof typeof _MatchRequest_Gender);
  'age'?: (number);
  'latitude'?: (number | string);
  'longitude'?: (number | string);
}

export interface _MatchRequest_MyInfo__Output {
  'gender': (keyof typeof _MatchRequest_Gender);
  'age': (number);
  'latitude': (number);
  'longitude': (number);
}

export interface _MatchRequest_Preferences {
  'kilometersRange'?: (number);
  'gender'?: (_MatchRequest_Gender | keyof typeof _MatchRequest_Gender);
  'minAge'?: (number);
  'maxAge'?: (number);
}

export interface _MatchRequest_Preferences__Output {
  'kilometersRange': (number);
  'gender': (keyof typeof _MatchRequest_Gender);
  'minAge': (number);
  'maxAge': (number);
}

export interface MatchRequest {
  'myInfo'?: (_MatchRequest_MyInfo | null);
  'preferences'?: (_MatchRequest_Preferences | null);
}

export interface MatchRequest__Output {
  'myInfo': (_MatchRequest_MyInfo__Output | null);
  'preferences': (_MatchRequest_Preferences__Output | null);
}
