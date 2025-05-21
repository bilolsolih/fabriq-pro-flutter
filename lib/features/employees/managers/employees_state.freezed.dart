// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'employees_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EmployeesState {

 List<User> get employees; EmployeesStatus get status;
/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EmployeesStateCopyWith<EmployeesState> get copyWith => _$EmployeesStateCopyWithImpl<EmployeesState>(this as EmployeesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EmployeesState&&const DeepCollectionEquality().equals(other.employees, employees)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(employees),status);

@override
String toString() {
  return 'EmployeesState(employees: $employees, status: $status)';
}


}

/// @nodoc
abstract mixin class $EmployeesStateCopyWith<$Res>  {
  factory $EmployeesStateCopyWith(EmployeesState value, $Res Function(EmployeesState) _then) = _$EmployeesStateCopyWithImpl;
@useResult
$Res call({
 List<User> employees, EmployeesStatus status
});




}
/// @nodoc
class _$EmployeesStateCopyWithImpl<$Res>
    implements $EmployeesStateCopyWith<$Res> {
  _$EmployeesStateCopyWithImpl(this._self, this._then);

  final EmployeesState _self;
  final $Res Function(EmployeesState) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? employees = null,Object? status = null,}) {
  return _then(_self.copyWith(
employees: null == employees ? _self.employees : employees // ignore: cast_nullable_to_non_nullable
as List<User>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmployeesStatus,
  ));
}

}


/// @nodoc


class _EmployeesState implements EmployeesState {
  const _EmployeesState({required final  List<User> employees, required this.status}): _employees = employees;
  

 final  List<User> _employees;
@override List<User> get employees {
  if (_employees is EqualUnmodifiableListView) return _employees;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_employees);
}

@override final  EmployeesStatus status;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmployeesStateCopyWith<_EmployeesState> get copyWith => __$EmployeesStateCopyWithImpl<_EmployeesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmployeesState&&const DeepCollectionEquality().equals(other._employees, _employees)&&(identical(other.status, status) || other.status == status));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_employees),status);

@override
String toString() {
  return 'EmployeesState(employees: $employees, status: $status)';
}


}

/// @nodoc
abstract mixin class _$EmployeesStateCopyWith<$Res> implements $EmployeesStateCopyWith<$Res> {
  factory _$EmployeesStateCopyWith(_EmployeesState value, $Res Function(_EmployeesState) _then) = __$EmployeesStateCopyWithImpl;
@override @useResult
$Res call({
 List<User> employees, EmployeesStatus status
});




}
/// @nodoc
class __$EmployeesStateCopyWithImpl<$Res>
    implements _$EmployeesStateCopyWith<$Res> {
  __$EmployeesStateCopyWithImpl(this._self, this._then);

  final _EmployeesState _self;
  final $Res Function(_EmployeesState) _then;

/// Create a copy of EmployeesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? employees = null,Object? status = null,}) {
  return _then(_EmployeesState(
employees: null == employees ? _self._employees : employees // ignore: cast_nullable_to_non_nullable
as List<User>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as EmployeesStatus,
  ));
}


}

// dart format on
