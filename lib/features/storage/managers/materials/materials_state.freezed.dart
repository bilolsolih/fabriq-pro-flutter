// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'materials_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialsState {

 MaterialsStatus get status; List<MaterialListModel> get materials; String? get errorMessage;
/// Create a copy of MaterialsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialsStateCopyWith<MaterialsState> get copyWith => _$MaterialsStateCopyWithImpl<MaterialsState>(this as MaterialsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.materials, materials)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(materials),errorMessage);

@override
String toString() {
  return 'MaterialsState(status: $status, materials: $materials, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MaterialsStateCopyWith<$Res>  {
  factory $MaterialsStateCopyWith(MaterialsState value, $Res Function(MaterialsState) _then) = _$MaterialsStateCopyWithImpl;
@useResult
$Res call({
 MaterialsStatus status, List<MaterialListModel> materials, String? errorMessage
});




}
/// @nodoc
class _$MaterialsStateCopyWithImpl<$Res>
    implements $MaterialsStateCopyWith<$Res> {
  _$MaterialsStateCopyWithImpl(this._self, this._then);

  final MaterialsState _self;
  final $Res Function(MaterialsState) _then;

/// Create a copy of MaterialsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? materials = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MaterialsStatus,materials: null == materials ? _self.materials : materials // ignore: cast_nullable_to_non_nullable
as List<MaterialListModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _MaterialsState implements MaterialsState {
  const _MaterialsState({required this.status, required final  List<MaterialListModel> materials, this.errorMessage}): _materials = materials;
  

@override final  MaterialsStatus status;
 final  List<MaterialListModel> _materials;
@override List<MaterialListModel> get materials {
  if (_materials is EqualUnmodifiableListView) return _materials;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materials);
}

@override final  String? errorMessage;

/// Create a copy of MaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialsStateCopyWith<_MaterialsState> get copyWith => __$MaterialsStateCopyWithImpl<_MaterialsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._materials, _materials)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_materials),errorMessage);

@override
String toString() {
  return 'MaterialsState(status: $status, materials: $materials, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MaterialsStateCopyWith<$Res> implements $MaterialsStateCopyWith<$Res> {
  factory _$MaterialsStateCopyWith(_MaterialsState value, $Res Function(_MaterialsState) _then) = __$MaterialsStateCopyWithImpl;
@override @useResult
$Res call({
 MaterialsStatus status, List<MaterialListModel> materials, String? errorMessage
});




}
/// @nodoc
class __$MaterialsStateCopyWithImpl<$Res>
    implements _$MaterialsStateCopyWith<$Res> {
  __$MaterialsStateCopyWithImpl(this._self, this._then);

  final _MaterialsState _self;
  final $Res Function(_MaterialsState) _then;

/// Create a copy of MaterialsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? materials = null,Object? errorMessage = freezed,}) {
  return _then(_MaterialsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MaterialsStatus,materials: null == materials ? _self._materials : materials // ignore: cast_nullable_to_non_nullable
as List<MaterialListModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
