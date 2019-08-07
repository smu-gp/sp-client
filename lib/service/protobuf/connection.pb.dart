///
//  Generated code. Do not modify.
//  source: connection.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core show bool, Deprecated, double, int, List, Map, override, pragma, String;

import 'package:protobuf/protobuf.dart' as $pb;

import 'connection.pbenum.dart';

export 'connection.pbenum.dart';

class ConnectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConnectionRequest', package: const $pb.PackageName('connection_grpc'))
    ..aOS(1, 'userId')
    ..hasRequiredFields = false
  ;

  ConnectionRequest._() : super();
  factory ConnectionRequest() => create();
  factory ConnectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConnectionRequest clone() => ConnectionRequest()..mergeFromMessage(this);
  ConnectionRequest copyWith(void Function(ConnectionRequest) updates) => super.copyWith((message) => updates(message as ConnectionRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectionRequest create() => ConnectionRequest._();
  ConnectionRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectionRequest> createRepeated() => $pb.PbList<ConnectionRequest>();
  static ConnectionRequest getDefault() => _defaultInstance ??= create()..freeze();
  static ConnectionRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);
}

class ConnectionResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConnectionResponse', package: const $pb.PackageName('connection_grpc'))
    ..aOS(1, 'connectionCode')
    ..hasRequiredFields = false
  ;

  ConnectionResponse._() : super();
  factory ConnectionResponse() => create();
  factory ConnectionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  ConnectionResponse clone() => ConnectionResponse()..mergeFromMessage(this);
  ConnectionResponse copyWith(void Function(ConnectionResponse) updates) => super.copyWith((message) => updates(message as ConnectionResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectionResponse create() => ConnectionResponse._();
  ConnectionResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectionResponse> createRepeated() => $pb.PbList<ConnectionResponse>();
  static ConnectionResponse getDefault() => _defaultInstance ??= create()..freeze();
  static ConnectionResponse _defaultInstance;

  $core.String get connectionCode => $_getS(0, '');
  set connectionCode($core.String v) { $_setString(0, v); }
  $core.bool hasConnectionCode() => $_has(0);
  void clearConnectionCode() => clearField(1);
}

class AuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthRequest', package: const $pb.PackageName('connection_grpc'))
    ..aOS(1, 'connectionCode')
    ..a<AuthDeviceInfo>(2, 'deviceInfo', $pb.PbFieldType.OM, AuthDeviceInfo.getDefault, AuthDeviceInfo.create)
    ..hasRequiredFields = false
  ;

  AuthRequest._() : super();
  factory AuthRequest() => create();
  factory AuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthRequest clone() => AuthRequest()..mergeFromMessage(this);
  AuthRequest copyWith(void Function(AuthRequest) updates) => super.copyWith((message) => updates(message as AuthRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthRequest create() => AuthRequest._();
  AuthRequest createEmptyInstance() => create();
  static $pb.PbList<AuthRequest> createRepeated() => $pb.PbList<AuthRequest>();
  static AuthRequest getDefault() => _defaultInstance ??= create()..freeze();
  static AuthRequest _defaultInstance;

  $core.String get connectionCode => $_getS(0, '');
  set connectionCode($core.String v) { $_setString(0, v); }
  $core.bool hasConnectionCode() => $_has(0);
  void clearConnectionCode() => clearField(1);

  AuthDeviceInfo get deviceInfo => $_getN(1);
  set deviceInfo(AuthDeviceInfo v) { setField(2, v); }
  $core.bool hasDeviceInfo() => $_has(1);
  void clearDeviceInfo() => clearField(2);
}

class AuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthResponse', package: const $pb.PackageName('connection_grpc'))
    ..e<AuthResponse_ResultMessage>(1, 'message', $pb.PbFieldType.OE, AuthResponse_ResultMessage.MESSAGE_FAILED, AuthResponse_ResultMessage.valueOf, AuthResponse_ResultMessage.values)
    ..aOS(2, 'userId')
    ..e<AuthResponse_FailedReason>(3, 'failedReason', $pb.PbFieldType.OE, AuthResponse_FailedReason.NONE, AuthResponse_FailedReason.valueOf, AuthResponse_FailedReason.values)
    ..hasRequiredFields = false
  ;

  AuthResponse._() : super();
  factory AuthResponse() => create();
  factory AuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthResponse clone() => AuthResponse()..mergeFromMessage(this);
  AuthResponse copyWith(void Function(AuthResponse) updates) => super.copyWith((message) => updates(message as AuthResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthResponse create() => AuthResponse._();
  AuthResponse createEmptyInstance() => create();
  static $pb.PbList<AuthResponse> createRepeated() => $pb.PbList<AuthResponse>();
  static AuthResponse getDefault() => _defaultInstance ??= create()..freeze();
  static AuthResponse _defaultInstance;

  AuthResponse_ResultMessage get message => $_getN(0);
  set message(AuthResponse_ResultMessage v) { setField(1, v); }
  $core.bool hasMessage() => $_has(0);
  void clearMessage() => clearField(1);

  $core.String get userId => $_getS(1, '');
  set userId($core.String v) { $_setString(1, v); }
  $core.bool hasUserId() => $_has(1);
  void clearUserId() => clearField(2);

  AuthResponse_FailedReason get failedReason => $_getN(2);
  set failedReason(AuthResponse_FailedReason v) { setField(3, v); }
  $core.bool hasFailedReason() => $_has(2);
  void clearFailedReason() => clearField(3);
}

class WaitAuthRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WaitAuthRequest', package: const $pb.PackageName('connection_grpc'))
    ..aOS(1, 'userId')
    ..a<AuthDeviceInfo>(2, 'authDevice', $pb.PbFieldType.OM, AuthDeviceInfo.getDefault, AuthDeviceInfo.create)
    ..aOB(3, 'acceptDevice')
    ..hasRequiredFields = false
  ;

  WaitAuthRequest._() : super();
  factory WaitAuthRequest() => create();
  factory WaitAuthRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitAuthRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WaitAuthRequest clone() => WaitAuthRequest()..mergeFromMessage(this);
  WaitAuthRequest copyWith(void Function(WaitAuthRequest) updates) => super.copyWith((message) => updates(message as WaitAuthRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WaitAuthRequest create() => WaitAuthRequest._();
  WaitAuthRequest createEmptyInstance() => create();
  static $pb.PbList<WaitAuthRequest> createRepeated() => $pb.PbList<WaitAuthRequest>();
  static WaitAuthRequest getDefault() => _defaultInstance ??= create()..freeze();
  static WaitAuthRequest _defaultInstance;

  $core.String get userId => $_getS(0, '');
  set userId($core.String v) { $_setString(0, v); }
  $core.bool hasUserId() => $_has(0);
  void clearUserId() => clearField(1);

  AuthDeviceInfo get authDevice => $_getN(1);
  set authDevice(AuthDeviceInfo v) { setField(2, v); }
  $core.bool hasAuthDevice() => $_has(1);
  void clearAuthDevice() => clearField(2);

  $core.bool get acceptDevice => $_get(2, false);
  set acceptDevice($core.bool v) { $_setBool(2, v); }
  $core.bool hasAcceptDevice() => $_has(2);
  void clearAcceptDevice() => clearField(3);
}

class WaitAuthResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WaitAuthResponse', package: const $pb.PackageName('connection_grpc'))
    ..a<AuthDeviceInfo>(1, 'authDevice', $pb.PbFieldType.OM, AuthDeviceInfo.getDefault, AuthDeviceInfo.create)
    ..hasRequiredFields = false
  ;

  WaitAuthResponse._() : super();
  factory WaitAuthResponse() => create();
  factory WaitAuthResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WaitAuthResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  WaitAuthResponse clone() => WaitAuthResponse()..mergeFromMessage(this);
  WaitAuthResponse copyWith(void Function(WaitAuthResponse) updates) => super.copyWith((message) => updates(message as WaitAuthResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WaitAuthResponse create() => WaitAuthResponse._();
  WaitAuthResponse createEmptyInstance() => create();
  static $pb.PbList<WaitAuthResponse> createRepeated() => $pb.PbList<WaitAuthResponse>();
  static WaitAuthResponse getDefault() => _defaultInstance ??= create()..freeze();
  static WaitAuthResponse _defaultInstance;

  AuthDeviceInfo get authDevice => $_getN(0);
  set authDevice(AuthDeviceInfo v) { setField(1, v); }
  $core.bool hasAuthDevice() => $_has(0);
  void clearAuthDevice() => clearField(1);
}

class AuthDeviceInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AuthDeviceInfo', package: const $pb.PackageName('connection_grpc'))
    ..e<AuthDeviceInfo_DeviceType>(1, 'deviceType', $pb.PbFieldType.OE, AuthDeviceInfo_DeviceType.DEVICE_ANDROID, AuthDeviceInfo_DeviceType.valueOf, AuthDeviceInfo_DeviceType.values)
    ..aOS(2, 'deviceName')
    ..hasRequiredFields = false
  ;

  AuthDeviceInfo._() : super();
  factory AuthDeviceInfo() => create();
  factory AuthDeviceInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuthDeviceInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  AuthDeviceInfo clone() => AuthDeviceInfo()..mergeFromMessage(this);
  AuthDeviceInfo copyWith(void Function(AuthDeviceInfo) updates) => super.copyWith((message) => updates(message as AuthDeviceInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AuthDeviceInfo create() => AuthDeviceInfo._();
  AuthDeviceInfo createEmptyInstance() => create();
  static $pb.PbList<AuthDeviceInfo> createRepeated() => $pb.PbList<AuthDeviceInfo>();
  static AuthDeviceInfo getDefault() => _defaultInstance ??= create()..freeze();
  static AuthDeviceInfo _defaultInstance;

  AuthDeviceInfo_DeviceType get deviceType => $_getN(0);
  set deviceType(AuthDeviceInfo_DeviceType v) { setField(1, v); }
  $core.bool hasDeviceType() => $_has(0);
  void clearDeviceType() => clearField(1);

  $core.String get deviceName => $_getS(1, '');
  set deviceName($core.String v) { $_setString(1, v); }
  $core.bool hasDeviceName() => $_has(1);
  void clearDeviceName() => clearField(2);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Empty', package: const $pb.PackageName('connection_grpc'))
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  Empty clone() => Empty()..mergeFromMessage(this);
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  static Empty getDefault() => _defaultInstance ??= create()..freeze();
  static Empty _defaultInstance;
}

