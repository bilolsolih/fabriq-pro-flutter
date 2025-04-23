// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'clients_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientsState {

 List<Client> get clients; ClientsStatus get status;
/// Create a copy of ClientsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientsStateCopyWith<ClientsState> get copyWith => _$ClientsStateCopyWithImpl<ClientsState>(this as ClientsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientsState&&const DeepCollectionEquality().equals(other.clients, clients)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(clients),status);

@override
String toString() {
  return 'ClientsState(clients: $clients, status: $status)';
}


}

/// @nodoc
abstract mixin class $ClientsStateCopyWith<$Res>  {
  factory $ClientsStateCopyWith(ClientsState value, $Res Function(ClientsState) _then) = _$ClientsStateCopyWithImpl;
@useResult
$Res call({
 List<Client> clients, ClientsStatus status
});




}
/// @nodoc
class _$ClientsStateCopyWithImpl<$Res>
    implements $ClientsStateCopyWith<$Res> {
  _$ClientsStateCopyWithImpl(this._self, this._then);

  final ClientsState _self;
  final $Res Function(ClientsState) _then;

/// Create a copy of ClientsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clients = null,Object? status = null,}) {
  return _then(_self.copyWith(
clients: null == clients ? _self.clients : clients // ignore: cast_nullable_to_non_nullable
as List<Client>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClientsStatus,
  ));
}

}


/// @nodoc


class _ClientsState implements ClientsState {
  const _ClientsState({required final  List<Client> clients, required this.status}): _clients = clients;
  

 final  List<Client> _clients;
@override List<Client> get clients {
  if (_clients is EqualUnmodifiableListView) return _clients;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clients);
}

@override final  ClientsStatus status;

/// Create a copy of ClientsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientsStateCopyWith<_ClientsState> get copyWith => __$ClientsStateCopyWithImpl<_ClientsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientsState&&const DeepCollectionEquality().equals(other._clients, _clients)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_clients),status);

@override
String toString() {
  return 'ClientsState(clients: $clients, status: $status)';
}


}

/// @nodoc
abstract mixin class _$ClientsStateCopyWith<$Res> implements $ClientsStateCopyWith<$Res> {
  factory _$ClientsStateCopyWith(_ClientsState value, $Res Function(_ClientsState) _then) = __$ClientsStateCopyWithImpl;
@override @useResult
$Res call({
 List<Client> clients, ClientsStatus status
});




}
/// @nodoc
class __$ClientsStateCopyWithImpl<$Res>
    implements _$ClientsStateCopyWith<$Res> {
  __$ClientsStateCopyWithImpl(this._self, this._then);

  final _ClientsState _self;
  final $Res Function(_ClientsState) _then;

/// Create a copy of ClientsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clients = null,Object? status = null,}) {
  return _then(_ClientsState(
clients: null == clients ? _self._clients : clients // ignore: cast_nullable_to_non_nullable
as List<Client>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ClientsStatus,
  ));
}


}

// dart format on
