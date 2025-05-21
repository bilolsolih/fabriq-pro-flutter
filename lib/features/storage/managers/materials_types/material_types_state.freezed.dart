// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_types_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MaterialTypesState {

 MaterialsStatus get status; List<MaterialTypeItemModel> get materialsTypes; String? get errorMessage;
/// Create a copy of MaterialTypesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MaterialTypesStateCopyWith<MaterialTypesState> get copyWith => _$MaterialTypesStateCopyWithImpl<MaterialTypesState>(this as MaterialTypesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MaterialTypesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.materialsTypes, materialsTypes)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(materialsTypes),errorMessage);

@override
String toString() {
  return 'MaterialTypesState(status: $status, materialsTypes: $materialsTypes, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $MaterialTypesStateCopyWith<$Res>  {
  factory $MaterialTypesStateCopyWith(MaterialTypesState value, $Res Function(MaterialTypesState) _then) = _$MaterialTypesStateCopyWithImpl;
@useResult
$Res call({
 MaterialsStatus status, List<MaterialTypeItemModel> materialsTypes, String? errorMessage
});




}
/// @nodoc
class _$MaterialTypesStateCopyWithImpl<$Res>
    implements $MaterialTypesStateCopyWith<$Res> {
  _$MaterialTypesStateCopyWithImpl(this._self, this._then);

  final MaterialTypesState _self;
  final $Res Function(MaterialTypesState) _then;

/// Create a copy of MaterialTypesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? materialsTypes = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MaterialsStatus,materialsTypes: null == materialsTypes ? _self.materialsTypes : materialsTypes // ignore: cast_nullable_to_non_nullable
as List<MaterialTypeItemModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc


class _MaterialTypesState implements MaterialTypesState {
  const _MaterialTypesState({required this.status, required final  List<MaterialTypeItemModel> materialsTypes, this.errorMessage}): _materialsTypes = materialsTypes;
  

@override final  MaterialsStatus status;
 final  List<MaterialTypeItemModel> _materialsTypes;
@override List<MaterialTypeItemModel> get materialsTypes {
  if (_materialsTypes is EqualUnmodifiableListView) return _materialsTypes;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_materialsTypes);
}

@override final  String? errorMessage;

/// Create a copy of MaterialTypesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MaterialTypesStateCopyWith<_MaterialTypesState> get copyWith => __$MaterialTypesStateCopyWithImpl<_MaterialTypesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MaterialTypesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._materialsTypes, _materialsTypes)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_materialsTypes),errorMessage);

@override
String toString() {
  return 'MaterialTypesState(status: $status, materialsTypes: $materialsTypes, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$MaterialTypesStateCopyWith<$Res> implements $MaterialTypesStateCopyWith<$Res> {
  factory _$MaterialTypesStateCopyWith(_MaterialTypesState value, $Res Function(_MaterialTypesState) _then) = __$MaterialTypesStateCopyWithImpl;
@override @useResult
$Res call({
 MaterialsStatus status, List<MaterialTypeItemModel> materialsTypes, String? errorMessage
});




}
/// @nodoc
class __$MaterialTypesStateCopyWithImpl<$Res>
    implements _$MaterialTypesStateCopyWith<$Res> {
  __$MaterialTypesStateCopyWithImpl(this._self, this._then);

  final _MaterialTypesState _self;
  final $Res Function(_MaterialTypesState) _then;

/// Create a copy of MaterialTypesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? materialsTypes = null,Object? errorMessage = freezed,}) {
  return _then(_MaterialTypesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as MaterialsStatus,materialsTypes: null == materialsTypes ? _self._materialsTypes : materialsTypes // ignore: cast_nullable_to_non_nullable
as List<MaterialTypeItemModel>,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
