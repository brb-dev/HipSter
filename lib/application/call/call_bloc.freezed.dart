// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'call_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallEventCopyWith<$Res> {
  factory $CallEventCopyWith(CallEvent value, $Res Function(CallEvent) then) =
      _$CallEventCopyWithImpl<$Res, CallEvent>;
}

/// @nodoc
class _$CallEventCopyWithImpl<$Res, $Val extends CallEvent>
    implements $CallEventCopyWith<$Res> {
  _$CallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializedImplCopyWith<$Res> {
  factory _$$InitializedImplCopyWith(
          _$InitializedImpl value, $Res Function(_$InitializedImpl) then) =
      __$$InitializedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializedImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$InitializedImpl>
    implements _$$InitializedImplCopyWith<$Res> {
  __$$InitializedImplCopyWithImpl(
      _$InitializedImpl _value, $Res Function(_$InitializedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializedImpl implements _Initialized {
  const _$InitializedImpl();

  @override
  String toString() {
    return 'CallEvent.initialized()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return initialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return initialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements CallEvent {
  const factory _Initialized() = _$InitializedImpl;
}

/// @nodoc
abstract class _$$JoinMeetingImplCopyWith<$Res> {
  factory _$$JoinMeetingImplCopyWith(
          _$JoinMeetingImpl value, $Res Function(_$JoinMeetingImpl) then) =
      __$$JoinMeetingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String meetingId});
}

/// @nodoc
class __$$JoinMeetingImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$JoinMeetingImpl>
    implements _$$JoinMeetingImplCopyWith<$Res> {
  __$$JoinMeetingImplCopyWithImpl(
      _$JoinMeetingImpl _value, $Res Function(_$JoinMeetingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meetingId = null,
  }) {
    return _then(_$JoinMeetingImpl(
      meetingId: null == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$JoinMeetingImpl implements _JoinMeeting {
  const _$JoinMeetingImpl({required this.meetingId});

  @override
  final String meetingId;

  @override
  String toString() {
    return 'CallEvent.joinMeeting(meetingId: $meetingId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinMeetingImpl &&
            (identical(other.meetingId, meetingId) ||
                other.meetingId == meetingId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, meetingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinMeetingImplCopyWith<_$JoinMeetingImpl> get copyWith =>
      __$$JoinMeetingImplCopyWithImpl<_$JoinMeetingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return joinMeeting(meetingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return joinMeeting?.call(meetingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (joinMeeting != null) {
      return joinMeeting(meetingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return joinMeeting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return joinMeeting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (joinMeeting != null) {
      return joinMeeting(this);
    }
    return orElse();
  }
}

abstract class _JoinMeeting implements CallEvent {
  const factory _JoinMeeting({required final String meetingId}) =
      _$JoinMeetingImpl;

  String get meetingId;
  @JsonKey(ignore: true)
  _$$JoinMeetingImplCopyWith<_$JoinMeetingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeaveMeetingImplCopyWith<$Res> {
  factory _$$LeaveMeetingImplCopyWith(
          _$LeaveMeetingImpl value, $Res Function(_$LeaveMeetingImpl) then) =
      __$$LeaveMeetingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeaveMeetingImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$LeaveMeetingImpl>
    implements _$$LeaveMeetingImplCopyWith<$Res> {
  __$$LeaveMeetingImplCopyWithImpl(
      _$LeaveMeetingImpl _value, $Res Function(_$LeaveMeetingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LeaveMeetingImpl implements _LeaveMeeting {
  const _$LeaveMeetingImpl();

  @override
  String toString() {
    return 'CallEvent.leaveMeeting()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeaveMeetingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return leaveMeeting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return leaveMeeting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (leaveMeeting != null) {
      return leaveMeeting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return leaveMeeting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return leaveMeeting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (leaveMeeting != null) {
      return leaveMeeting(this);
    }
    return orElse();
  }
}

abstract class _LeaveMeeting implements CallEvent {
  const factory _LeaveMeeting() = _$LeaveMeetingImpl;
}

/// @nodoc
abstract class _$$ToggleMuteImplCopyWith<$Res> {
  factory _$$ToggleMuteImplCopyWith(
          _$ToggleMuteImpl value, $Res Function(_$ToggleMuteImpl) then) =
      __$$ToggleMuteImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleMuteImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$ToggleMuteImpl>
    implements _$$ToggleMuteImplCopyWith<$Res> {
  __$$ToggleMuteImplCopyWithImpl(
      _$ToggleMuteImpl _value, $Res Function(_$ToggleMuteImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleMuteImpl implements _ToggleMute {
  const _$ToggleMuteImpl();

  @override
  String toString() {
    return 'CallEvent.toggleMute()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleMuteImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return toggleMute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return toggleMute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (toggleMute != null) {
      return toggleMute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return toggleMute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return toggleMute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (toggleMute != null) {
      return toggleMute(this);
    }
    return orElse();
  }
}

abstract class _ToggleMute implements CallEvent {
  const factory _ToggleMute() = _$ToggleMuteImpl;
}

/// @nodoc
abstract class _$$ToggleVideoImplCopyWith<$Res> {
  factory _$$ToggleVideoImplCopyWith(
          _$ToggleVideoImpl value, $Res Function(_$ToggleVideoImpl) then) =
      __$$ToggleVideoImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleVideoImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$ToggleVideoImpl>
    implements _$$ToggleVideoImplCopyWith<$Res> {
  __$$ToggleVideoImplCopyWithImpl(
      _$ToggleVideoImpl _value, $Res Function(_$ToggleVideoImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ToggleVideoImpl implements _ToggleVideo {
  const _$ToggleVideoImpl();

  @override
  String toString() {
    return 'CallEvent.toggleVideo()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleVideoImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return toggleVideo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return toggleVideo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (toggleVideo != null) {
      return toggleVideo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return toggleVideo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return toggleVideo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (toggleVideo != null) {
      return toggleVideo(this);
    }
    return orElse();
  }
}

abstract class _ToggleVideo implements CallEvent {
  const factory _ToggleVideo() = _$ToggleVideoImpl;
}

/// @nodoc
abstract class _$$SetLocalUIDImplCopyWith<$Res> {
  factory _$$SetLocalUIDImplCopyWith(
          _$SetLocalUIDImpl value, $Res Function(_$SetLocalUIDImpl) then) =
      __$$SetLocalUIDImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int localUid});
}

/// @nodoc
class __$$SetLocalUIDImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$SetLocalUIDImpl>
    implements _$$SetLocalUIDImplCopyWith<$Res> {
  __$$SetLocalUIDImplCopyWithImpl(
      _$SetLocalUIDImpl _value, $Res Function(_$SetLocalUIDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? localUid = null,
  }) {
    return _then(_$SetLocalUIDImpl(
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetLocalUIDImpl implements _SetLocalUID {
  const _$SetLocalUIDImpl({required this.localUid});

  @override
  final int localUid;

  @override
  String toString() {
    return 'CallEvent.setLocalUID(localUid: $localUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocalUIDImpl &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, localUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocalUIDImplCopyWith<_$SetLocalUIDImpl> get copyWith =>
      __$$SetLocalUIDImplCopyWithImpl<_$SetLocalUIDImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return setLocalUID(localUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return setLocalUID?.call(localUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setLocalUID != null) {
      return setLocalUID(localUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return setLocalUID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return setLocalUID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setLocalUID != null) {
      return setLocalUID(this);
    }
    return orElse();
  }
}

abstract class _SetLocalUID implements CallEvent {
  const factory _SetLocalUID({required final int localUid}) = _$SetLocalUIDImpl;

  int get localUid;
  @JsonKey(ignore: true)
  _$$SetLocalUIDImplCopyWith<_$SetLocalUIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetRemoteUidImplCopyWith<$Res> {
  factory _$$SetRemoteUidImplCopyWith(
          _$SetRemoteUidImpl value, $Res Function(_$SetRemoteUidImpl) then) =
      __$$SetRemoteUidImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? remoteUid});
}

/// @nodoc
class __$$SetRemoteUidImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$SetRemoteUidImpl>
    implements _$$SetRemoteUidImplCopyWith<$Res> {
  __$$SetRemoteUidImplCopyWithImpl(
      _$SetRemoteUidImpl _value, $Res Function(_$SetRemoteUidImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = freezed,
  }) {
    return _then(_$SetRemoteUidImpl(
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SetRemoteUidImpl implements _SetRemoteUid {
  const _$SetRemoteUidImpl({this.remoteUid});

  @override
  final int? remoteUid;

  @override
  String toString() {
    return 'CallEvent.setRemoteUid(remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRemoteUidImpl &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRemoteUidImplCopyWith<_$SetRemoteUidImpl> get copyWith =>
      __$$SetRemoteUidImplCopyWithImpl<_$SetRemoteUidImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return setRemoteUid(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return setRemoteUid?.call(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setRemoteUid != null) {
      return setRemoteUid(remoteUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return setRemoteUid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return setRemoteUid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setRemoteUid != null) {
      return setRemoteUid(this);
    }
    return orElse();
  }
}

abstract class _SetRemoteUid implements CallEvent {
  const factory _SetRemoteUid({final int? remoteUid}) = _$SetRemoteUidImpl;

  int? get remoteUid;
  @JsonKey(ignore: true)
  _$$SetRemoteUidImplCopyWith<_$SetRemoteUidImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveRemoteUIDImplCopyWith<$Res> {
  factory _$$RemoveRemoteUIDImplCopyWith(_$RemoveRemoteUIDImpl value,
          $Res Function(_$RemoveRemoteUIDImpl) then) =
      __$$RemoveRemoteUIDImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid});
}

/// @nodoc
class __$$RemoveRemoteUIDImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$RemoveRemoteUIDImpl>
    implements _$$RemoveRemoteUIDImplCopyWith<$Res> {
  __$$RemoveRemoteUIDImplCopyWithImpl(
      _$RemoveRemoteUIDImpl _value, $Res Function(_$RemoveRemoteUIDImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
  }) {
    return _then(_$RemoveRemoteUIDImpl(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$RemoveRemoteUIDImpl implements _RemoveRemoteUID {
  const _$RemoveRemoteUIDImpl({required this.remoteUid});

  @override
  final int remoteUid;

  @override
  String toString() {
    return 'CallEvent.removeRemoteUID(remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveRemoteUIDImpl &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveRemoteUIDImplCopyWith<_$RemoveRemoteUIDImpl> get copyWith =>
      __$$RemoveRemoteUIDImplCopyWithImpl<_$RemoveRemoteUIDImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return removeRemoteUID(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return removeRemoteUID?.call(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (removeRemoteUID != null) {
      return removeRemoteUID(remoteUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return removeRemoteUID(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return removeRemoteUID?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (removeRemoteUID != null) {
      return removeRemoteUID(this);
    }
    return orElse();
  }
}

abstract class _RemoveRemoteUID implements CallEvent {
  const factory _RemoveRemoteUID({required final int remoteUid}) =
      _$RemoveRemoteUIDImpl;

  int get remoteUid;
  @JsonKey(ignore: true)
  _$$RemoveRemoteUIDImplCopyWith<_$RemoveRemoteUIDImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetCallStatusImplCopyWith<$Res> {
  factory _$$SetCallStatusImplCopyWith(
          _$SetCallStatusImpl value, $Res Function(_$SetCallStatusImpl) then) =
      __$$SetCallStatusImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CallStatus status, String? message});
}

/// @nodoc
class __$$SetCallStatusImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$SetCallStatusImpl>
    implements _$$SetCallStatusImplCopyWith<$Res> {
  __$$SetCallStatusImplCopyWithImpl(
      _$SetCallStatusImpl _value, $Res Function(_$SetCallStatusImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
  }) {
    return _then(_$SetCallStatusImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallStatus,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SetCallStatusImpl implements _SetCallStatus {
  const _$SetCallStatusImpl({required this.status, this.message});

  @override
  final CallStatus status;
  @override
  final String? message;

  @override
  String toString() {
    return 'CallEvent.setCallStatus(status: $status, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCallStatusImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetCallStatusImplCopyWith<_$SetCallStatusImpl> get copyWith =>
      __$$SetCallStatusImplCopyWithImpl<_$SetCallStatusImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return setCallStatus(status, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return setCallStatus?.call(status, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setCallStatus != null) {
      return setCallStatus(status, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return setCallStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return setCallStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setCallStatus != null) {
      return setCallStatus(this);
    }
    return orElse();
  }
}

abstract class _SetCallStatus implements CallEvent {
  const factory _SetCallStatus(
      {required final CallStatus status,
      final String? message}) = _$SetCallStatusImpl;

  CallStatus get status;
  String? get message;
  @JsonKey(ignore: true)
  _$$SetCallStatusImplCopyWith<_$SetCallStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetNetworkQualityImplCopyWith<$Res> {
  factory _$$SetNetworkQualityImplCopyWith(_$SetNetworkQualityImpl value,
          $Res Function(_$SetNetworkQualityImpl) then) =
      __$$SetNetworkQualityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int quality});
}

/// @nodoc
class __$$SetNetworkQualityImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$SetNetworkQualityImpl>
    implements _$$SetNetworkQualityImplCopyWith<$Res> {
  __$$SetNetworkQualityImplCopyWithImpl(_$SetNetworkQualityImpl _value,
      $Res Function(_$SetNetworkQualityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quality = null,
  }) {
    return _then(_$SetNetworkQualityImpl(
      quality: null == quality
          ? _value.quality
          : quality // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetNetworkQualityImpl implements _SetNetworkQuality {
  const _$SetNetworkQualityImpl({required this.quality});

  @override
  final int quality;

  @override
  String toString() {
    return 'CallEvent.setNetworkQuality(quality: $quality)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetNetworkQualityImpl &&
            (identical(other.quality, quality) || other.quality == quality));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quality);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetNetworkQualityImplCopyWith<_$SetNetworkQualityImpl> get copyWith =>
      __$$SetNetworkQualityImplCopyWithImpl<_$SetNetworkQualityImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return setNetworkQuality(quality);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return setNetworkQuality?.call(quality);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setNetworkQuality != null) {
      return setNetworkQuality(quality);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return setNetworkQuality(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return setNetworkQuality?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setNetworkQuality != null) {
      return setNetworkQuality(this);
    }
    return orElse();
  }
}

abstract class _SetNetworkQuality implements CallEvent {
  const factory _SetNetworkQuality({required final int quality}) =
      _$SetNetworkQualityImpl;

  int get quality;
  @JsonKey(ignore: true)
  _$$SetNetworkQualityImplCopyWith<_$SetNetworkQualityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetRemoteVideoEnabledImplCopyWith<$Res> {
  factory _$$SetRemoteVideoEnabledImplCopyWith(
          _$SetRemoteVideoEnabledImpl value,
          $Res Function(_$SetRemoteVideoEnabledImpl) then) =
      __$$SetRemoteVideoEnabledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$SetRemoteVideoEnabledImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$SetRemoteVideoEnabledImpl>
    implements _$$SetRemoteVideoEnabledImplCopyWith<$Res> {
  __$$SetRemoteVideoEnabledImplCopyWithImpl(_$SetRemoteVideoEnabledImpl _value,
      $Res Function(_$SetRemoteVideoEnabledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$SetRemoteVideoEnabledImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetRemoteVideoEnabledImpl implements _SetRemoteVideoEnabled {
  const _$SetRemoteVideoEnabledImpl({required this.enabled});

  @override
  final bool enabled;

  @override
  String toString() {
    return 'CallEvent.setRemoteVideoEnabled(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRemoteVideoEnabledImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRemoteVideoEnabledImplCopyWith<_$SetRemoteVideoEnabledImpl>
      get copyWith => __$$SetRemoteVideoEnabledImplCopyWithImpl<
          _$SetRemoteVideoEnabledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return setRemoteVideoEnabled(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return setRemoteVideoEnabled?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setRemoteVideoEnabled != null) {
      return setRemoteVideoEnabled(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return setRemoteVideoEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return setRemoteVideoEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setRemoteVideoEnabled != null) {
      return setRemoteVideoEnabled(this);
    }
    return orElse();
  }
}

abstract class _SetRemoteVideoEnabled implements CallEvent {
  const factory _SetRemoteVideoEnabled({required final bool enabled}) =
      _$SetRemoteVideoEnabledImpl;

  bool get enabled;
  @JsonKey(ignore: true)
  _$$SetRemoteVideoEnabledImplCopyWith<_$SetRemoteVideoEnabledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetRemoteAudioEnabledImplCopyWith<$Res> {
  factory _$$SetRemoteAudioEnabledImplCopyWith(
          _$SetRemoteAudioEnabledImpl value,
          $Res Function(_$SetRemoteAudioEnabledImpl) then) =
      __$$SetRemoteAudioEnabledImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool enabled});
}

/// @nodoc
class __$$SetRemoteAudioEnabledImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$SetRemoteAudioEnabledImpl>
    implements _$$SetRemoteAudioEnabledImplCopyWith<$Res> {
  __$$SetRemoteAudioEnabledImplCopyWithImpl(_$SetRemoteAudioEnabledImpl _value,
      $Res Function(_$SetRemoteAudioEnabledImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enabled = null,
  }) {
    return _then(_$SetRemoteAudioEnabledImpl(
      enabled: null == enabled
          ? _value.enabled
          : enabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetRemoteAudioEnabledImpl implements _SetRemoteAudioEnabled {
  const _$SetRemoteAudioEnabledImpl({required this.enabled});

  @override
  final bool enabled;

  @override
  String toString() {
    return 'CallEvent.setRemoteAudioEnabled(enabled: $enabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetRemoteAudioEnabledImpl &&
            (identical(other.enabled, enabled) || other.enabled == enabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, enabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetRemoteAudioEnabledImplCopyWith<_$SetRemoteAudioEnabledImpl>
      get copyWith => __$$SetRemoteAudioEnabledImplCopyWithImpl<
          _$SetRemoteAudioEnabledImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return setRemoteAudioEnabled(enabled);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return setRemoteAudioEnabled?.call(enabled);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setRemoteAudioEnabled != null) {
      return setRemoteAudioEnabled(enabled);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return setRemoteAudioEnabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return setRemoteAudioEnabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (setRemoteAudioEnabled != null) {
      return setRemoteAudioEnabled(this);
    }
    return orElse();
  }
}

abstract class _SetRemoteAudioEnabled implements CallEvent {
  const factory _SetRemoteAudioEnabled({required final bool enabled}) =
      _$SetRemoteAudioEnabledImpl;

  bool get enabled;
  @JsonKey(ignore: true)
  _$$SetRemoteAudioEnabledImplCopyWith<_$SetRemoteAudioEnabledImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartScreenShareImplCopyWith<$Res> {
  factory _$$StartScreenShareImplCopyWith(_$StartScreenShareImpl value,
          $Res Function(_$StartScreenShareImpl) then) =
      __$$StartScreenShareImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartScreenShareImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$StartScreenShareImpl>
    implements _$$StartScreenShareImplCopyWith<$Res> {
  __$$StartScreenShareImplCopyWithImpl(_$StartScreenShareImpl _value,
      $Res Function(_$StartScreenShareImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartScreenShareImpl implements _StartScreenShare {
  const _$StartScreenShareImpl();

  @override
  String toString() {
    return 'CallEvent.startScreenShare()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartScreenShareImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return startScreenShare();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return startScreenShare?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (startScreenShare != null) {
      return startScreenShare();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return startScreenShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return startScreenShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (startScreenShare != null) {
      return startScreenShare(this);
    }
    return orElse();
  }
}

abstract class _StartScreenShare implements CallEvent {
  const factory _StartScreenShare() = _$StartScreenShareImpl;
}

/// @nodoc
abstract class _$$StopScreenShareImplCopyWith<$Res> {
  factory _$$StopScreenShareImplCopyWith(_$StopScreenShareImpl value,
          $Res Function(_$StopScreenShareImpl) then) =
      __$$StopScreenShareImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopScreenShareImplCopyWithImpl<$Res>
    extends _$CallEventCopyWithImpl<$Res, _$StopScreenShareImpl>
    implements _$$StopScreenShareImplCopyWith<$Res> {
  __$$StopScreenShareImplCopyWithImpl(
      _$StopScreenShareImpl _value, $Res Function(_$StopScreenShareImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StopScreenShareImpl implements _StopScreenShare {
  const _$StopScreenShareImpl();

  @override
  String toString() {
    return 'CallEvent.stopScreenShare()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopScreenShareImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialized,
    required TResult Function(String meetingId) joinMeeting,
    required TResult Function() leaveMeeting,
    required TResult Function() toggleMute,
    required TResult Function() toggleVideo,
    required TResult Function(int localUid) setLocalUID,
    required TResult Function(int? remoteUid) setRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUID,
    required TResult Function(CallStatus status, String? message) setCallStatus,
    required TResult Function(int quality) setNetworkQuality,
    required TResult Function(bool enabled) setRemoteVideoEnabled,
    required TResult Function(bool enabled) setRemoteAudioEnabled,
    required TResult Function() startScreenShare,
    required TResult Function() stopScreenShare,
  }) {
    return stopScreenShare();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialized,
    TResult? Function(String meetingId)? joinMeeting,
    TResult? Function()? leaveMeeting,
    TResult? Function()? toggleMute,
    TResult? Function()? toggleVideo,
    TResult? Function(int localUid)? setLocalUID,
    TResult? Function(int? remoteUid)? setRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUID,
    TResult? Function(CallStatus status, String? message)? setCallStatus,
    TResult? Function(int quality)? setNetworkQuality,
    TResult? Function(bool enabled)? setRemoteVideoEnabled,
    TResult? Function(bool enabled)? setRemoteAudioEnabled,
    TResult? Function()? startScreenShare,
    TResult? Function()? stopScreenShare,
  }) {
    return stopScreenShare?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialized,
    TResult Function(String meetingId)? joinMeeting,
    TResult Function()? leaveMeeting,
    TResult Function()? toggleMute,
    TResult Function()? toggleVideo,
    TResult Function(int localUid)? setLocalUID,
    TResult Function(int? remoteUid)? setRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUID,
    TResult Function(CallStatus status, String? message)? setCallStatus,
    TResult Function(int quality)? setNetworkQuality,
    TResult Function(bool enabled)? setRemoteVideoEnabled,
    TResult Function(bool enabled)? setRemoteAudioEnabled,
    TResult Function()? startScreenShare,
    TResult Function()? stopScreenShare,
    required TResult orElse(),
  }) {
    if (stopScreenShare != null) {
      return stopScreenShare();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_JoinMeeting value) joinMeeting,
    required TResult Function(_LeaveMeeting value) leaveMeeting,
    required TResult Function(_ToggleMute value) toggleMute,
    required TResult Function(_ToggleVideo value) toggleVideo,
    required TResult Function(_SetLocalUID value) setLocalUID,
    required TResult Function(_SetRemoteUid value) setRemoteUid,
    required TResult Function(_RemoveRemoteUID value) removeRemoteUID,
    required TResult Function(_SetCallStatus value) setCallStatus,
    required TResult Function(_SetNetworkQuality value) setNetworkQuality,
    required TResult Function(_SetRemoteVideoEnabled value)
        setRemoteVideoEnabled,
    required TResult Function(_SetRemoteAudioEnabled value)
        setRemoteAudioEnabled,
    required TResult Function(_StartScreenShare value) startScreenShare,
    required TResult Function(_StopScreenShare value) stopScreenShare,
  }) {
    return stopScreenShare(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_JoinMeeting value)? joinMeeting,
    TResult? Function(_LeaveMeeting value)? leaveMeeting,
    TResult? Function(_ToggleMute value)? toggleMute,
    TResult? Function(_ToggleVideo value)? toggleVideo,
    TResult? Function(_SetLocalUID value)? setLocalUID,
    TResult? Function(_SetRemoteUid value)? setRemoteUid,
    TResult? Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult? Function(_SetCallStatus value)? setCallStatus,
    TResult? Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult? Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult? Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult? Function(_StartScreenShare value)? startScreenShare,
    TResult? Function(_StopScreenShare value)? stopScreenShare,
  }) {
    return stopScreenShare?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_JoinMeeting value)? joinMeeting,
    TResult Function(_LeaveMeeting value)? leaveMeeting,
    TResult Function(_ToggleMute value)? toggleMute,
    TResult Function(_ToggleVideo value)? toggleVideo,
    TResult Function(_SetLocalUID value)? setLocalUID,
    TResult Function(_SetRemoteUid value)? setRemoteUid,
    TResult Function(_RemoveRemoteUID value)? removeRemoteUID,
    TResult Function(_SetCallStatus value)? setCallStatus,
    TResult Function(_SetNetworkQuality value)? setNetworkQuality,
    TResult Function(_SetRemoteVideoEnabled value)? setRemoteVideoEnabled,
    TResult Function(_SetRemoteAudioEnabled value)? setRemoteAudioEnabled,
    TResult Function(_StartScreenShare value)? startScreenShare,
    TResult Function(_StopScreenShare value)? stopScreenShare,
    required TResult orElse(),
  }) {
    if (stopScreenShare != null) {
      return stopScreenShare(this);
    }
    return orElse();
  }
}

abstract class _StopScreenShare implements CallEvent {
  const factory _StopScreenShare() = _$StopScreenShareImpl;
}

/// @nodoc
mixin _$CallState {
  bool get isMuted => throw _privateConstructorUsedError;
  bool get isVideoDisabled => throw _privateConstructorUsedError;
  int? get remoteUid => throw _privateConstructorUsedError;
  int get localUid => throw _privateConstructorUsedError;
  CallStatus get callStatus => throw _privateConstructorUsedError;
  String? get statusMessage => throw _privateConstructorUsedError;
  int get networkQuality => throw _privateConstructorUsedError;
  bool get remoteVideoEnabled =>
      throw _privateConstructorUsedError; // uid -> video state
  bool get remoteAudioEnabled => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CallStateCopyWith<CallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallStateCopyWith<$Res> {
  factory $CallStateCopyWith(CallState value, $Res Function(CallState) then) =
      _$CallStateCopyWithImpl<$Res, CallState>;
  @useResult
  $Res call(
      {bool isMuted,
      bool isVideoDisabled,
      int? remoteUid,
      int localUid,
      CallStatus callStatus,
      String? statusMessage,
      int networkQuality,
      bool remoteVideoEnabled,
      bool remoteAudioEnabled});
}

/// @nodoc
class _$CallStateCopyWithImpl<$Res, $Val extends CallState>
    implements $CallStateCopyWith<$Res> {
  _$CallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMuted = null,
    Object? isVideoDisabled = null,
    Object? remoteUid = freezed,
    Object? localUid = null,
    Object? callStatus = null,
    Object? statusMessage = freezed,
    Object? networkQuality = null,
    Object? remoteVideoEnabled = null,
    Object? remoteAudioEnabled = null,
  }) {
    return _then(_value.copyWith(
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoDisabled: null == isVideoDisabled
          ? _value.isVideoDisabled
          : isVideoDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      callStatus: null == callStatus
          ? _value.callStatus
          : callStatus // ignore: cast_nullable_to_non_nullable
              as CallStatus,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      networkQuality: null == networkQuality
          ? _value.networkQuality
          : networkQuality // ignore: cast_nullable_to_non_nullable
              as int,
      remoteVideoEnabled: null == remoteVideoEnabled
          ? _value.remoteVideoEnabled
          : remoteVideoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteAudioEnabled: null == remoteAudioEnabled
          ? _value.remoteAudioEnabled
          : remoteAudioEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CallStateImplCopyWith<$Res>
    implements $CallStateCopyWith<$Res> {
  factory _$$CallStateImplCopyWith(
          _$CallStateImpl value, $Res Function(_$CallStateImpl) then) =
      __$$CallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMuted,
      bool isVideoDisabled,
      int? remoteUid,
      int localUid,
      CallStatus callStatus,
      String? statusMessage,
      int networkQuality,
      bool remoteVideoEnabled,
      bool remoteAudioEnabled});
}

/// @nodoc
class __$$CallStateImplCopyWithImpl<$Res>
    extends _$CallStateCopyWithImpl<$Res, _$CallStateImpl>
    implements _$$CallStateImplCopyWith<$Res> {
  __$$CallStateImplCopyWithImpl(
      _$CallStateImpl _value, $Res Function(_$CallStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMuted = null,
    Object? isVideoDisabled = null,
    Object? remoteUid = freezed,
    Object? localUid = null,
    Object? callStatus = null,
    Object? statusMessage = freezed,
    Object? networkQuality = null,
    Object? remoteVideoEnabled = null,
    Object? remoteAudioEnabled = null,
  }) {
    return _then(_$CallStateImpl(
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      isVideoDisabled: null == isVideoDisabled
          ? _value.isVideoDisabled
          : isVideoDisabled // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteUid: freezed == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int?,
      localUid: null == localUid
          ? _value.localUid
          : localUid // ignore: cast_nullable_to_non_nullable
              as int,
      callStatus: null == callStatus
          ? _value.callStatus
          : callStatus // ignore: cast_nullable_to_non_nullable
              as CallStatus,
      statusMessage: freezed == statusMessage
          ? _value.statusMessage
          : statusMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      networkQuality: null == networkQuality
          ? _value.networkQuality
          : networkQuality // ignore: cast_nullable_to_non_nullable
              as int,
      remoteVideoEnabled: null == remoteVideoEnabled
          ? _value.remoteVideoEnabled
          : remoteVideoEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      remoteAudioEnabled: null == remoteAudioEnabled
          ? _value.remoteAudioEnabled
          : remoteAudioEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CallStateImpl extends _CallState {
  const _$CallStateImpl(
      {required this.isMuted,
      required this.isVideoDisabled,
      required this.remoteUid,
      required this.localUid,
      required this.callStatus,
      this.statusMessage,
      required this.networkQuality,
      required this.remoteVideoEnabled,
      required this.remoteAudioEnabled})
      : super._();

  @override
  final bool isMuted;
  @override
  final bool isVideoDisabled;
  @override
  final int? remoteUid;
  @override
  final int localUid;
  @override
  final CallStatus callStatus;
  @override
  final String? statusMessage;
  @override
  final int networkQuality;
  @override
  final bool remoteVideoEnabled;
// uid -> video state
  @override
  final bool remoteAudioEnabled;

  @override
  String toString() {
    return 'CallState(isMuted: $isMuted, isVideoDisabled: $isVideoDisabled, remoteUid: $remoteUid, localUid: $localUid, callStatus: $callStatus, statusMessage: $statusMessage, networkQuality: $networkQuality, remoteVideoEnabled: $remoteVideoEnabled, remoteAudioEnabled: $remoteAudioEnabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CallStateImpl &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.isVideoDisabled, isVideoDisabled) ||
                other.isVideoDisabled == isVideoDisabled) &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid) &&
            (identical(other.localUid, localUid) ||
                other.localUid == localUid) &&
            (identical(other.callStatus, callStatus) ||
                other.callStatus == callStatus) &&
            (identical(other.statusMessage, statusMessage) ||
                other.statusMessage == statusMessage) &&
            (identical(other.networkQuality, networkQuality) ||
                other.networkQuality == networkQuality) &&
            (identical(other.remoteVideoEnabled, remoteVideoEnabled) ||
                other.remoteVideoEnabled == remoteVideoEnabled) &&
            (identical(other.remoteAudioEnabled, remoteAudioEnabled) ||
                other.remoteAudioEnabled == remoteAudioEnabled));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isMuted,
      isVideoDisabled,
      remoteUid,
      localUid,
      callStatus,
      statusMessage,
      networkQuality,
      remoteVideoEnabled,
      remoteAudioEnabled);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CallStateImplCopyWith<_$CallStateImpl> get copyWith =>
      __$$CallStateImplCopyWithImpl<_$CallStateImpl>(this, _$identity);
}

abstract class _CallState extends CallState {
  const factory _CallState(
      {required final bool isMuted,
      required final bool isVideoDisabled,
      required final int? remoteUid,
      required final int localUid,
      required final CallStatus callStatus,
      final String? statusMessage,
      required final int networkQuality,
      required final bool remoteVideoEnabled,
      required final bool remoteAudioEnabled}) = _$CallStateImpl;
  const _CallState._() : super._();

  @override
  bool get isMuted;
  @override
  bool get isVideoDisabled;
  @override
  int? get remoteUid;
  @override
  int get localUid;
  @override
  CallStatus get callStatus;
  @override
  String? get statusMessage;
  @override
  int get networkQuality;
  @override
  bool get remoteVideoEnabled;
  @override // uid -> video state
  bool get remoteAudioEnabled;
  @override
  @JsonKey(ignore: true)
  _$$CallStateImplCopyWith<_$CallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
