// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accessory_types_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccessoryTypesState {

 Status get status; List<AccessoryTypeModel> get accessoryTypes; String? get errorMessage;
/// Create a copy of AccessoryTypesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoryTypesStateCopyWith<AccessoryTypesState> get copyWith => _$AccessoryTypesStateCopyWithImpl<AccessoryTypesState>(this as AccessoryTypesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoryTypesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.accessoryTypes, accessoryTypes)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(accessoryTypes),errorMessage);

@override
String toString() {
  return 'AccessoryTypesState(status: $status, accessoryTypes: $accessoryTypes, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AccessoryTypesStateCopyWith<$Res>  {
  factory $AccessoryTypesStateCopyWith(AccessoryTypesState value, $Res Function(AccessoryTypesState) _then) = _$AccessoryTypesStateCopyWithImpl;
@useResult
$Res call({
 Status status, List<AccessoryTypeModel> accessoryTypes, String? errorMessage
});




}
/// @nodoc
class _$AccessoryTypesStateCopyWithImpl<$Res>
    implements $AccessoryTypesStateCopyWith<$Res> {
  _$AccessoryTypesStateCopyWithImpl(this._self, this._then);

  final AccessoryTypesState _self;
  final $Res Function(AccessoryTypesState) _then;

/// Create a copy of AccessoryTypesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? accessoryTypes = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,accessoryTypes: null == accessoryTypes ? _self.accessoryTypes : accessoryTypes // ignore: cast_nullable_to_non_nullable
as List<AccessoryTypeModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _AccessoryTypesState implements AccessoryTypesState {
  const _AccessoryTypesState({required this.status, required final  List<AccessoryTypeModel> accessoryTypes, this.errorMessage}): _accessoryTypes = accessoryTypes;
  

@override final  Status status;
 final  List<AccessoryTypeModel> _accessoryTypes;
@override List<AccessoryTypeModel> get accessoryTypes {
  if (_accessoryTypes is EqualUnmodifiableListView) return _accessoryTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessoryTypes);
}

@override final  String? errorMessage;

/// Create a copy of AccessoryTypesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoryTypesStateCopyWith<_AccessoryTypesState> get copyWith => __$AccessoryTypesStateCopyWithImpl<_AccessoryTypesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoryTypesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._accessoryTypes, _accessoryTypes)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_accessoryTypes),errorMessage);

@override
String toString() {
  return 'AccessoryTypesState(status: $status, accessoryTypes: $accessoryTypes, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AccessoryTypesStateCopyWith<$Res> implements $AccessoryTypesStateCopyWith<$Res> {
  factory _$AccessoryTypesStateCopyWith(_AccessoryTypesState value, $Res Function(_AccessoryTypesState) _then) = __$AccessoryTypesStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, List<AccessoryTypeModel> accessoryTypes, String? errorMessage
});




}
/// @nodoc
class __$AccessoryTypesStateCopyWithImpl<$Res>
    implements _$AccessoryTypesStateCopyWith<$Res> {
  __$AccessoryTypesStateCopyWithImpl(this._self, this._then);

  final _AccessoryTypesState _self;
  final $Res Function(_AccessoryTypesState) _then;

/// Create a copy of AccessoryTypesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? accessoryTypes = null,Object? errorMessage = freezed,}) {
  return _then(_AccessoryTypesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,accessoryTypes: null == accessoryTypes ? _self._accessoryTypes : accessoryTypes // ignore: cast_nullable_to_non_nullable
as List<AccessoryTypeModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
