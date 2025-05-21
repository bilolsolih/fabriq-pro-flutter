// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'accessories_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AccessoriesState {

 Status get status; List<AccessoryModel> get accessories; List<AccessoryEntryModel> get accessoryEntries; List<SupplierEntryModel> get supplierEntries; AccessoryTypeModel? get selectedType; String? get errorMessage;
/// Create a copy of AccessoriesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AccessoriesStateCopyWith<AccessoriesState> get copyWith => _$AccessoriesStateCopyWithImpl<AccessoriesState>(this as AccessoriesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AccessoriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.accessories, accessories)&&const DeepCollectionEquality().equals(other.accessoryEntries, accessoryEntries)&&const DeepCollectionEquality().equals(other.supplierEntries, supplierEntries)&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(accessories),const DeepCollectionEquality().hash(accessoryEntries),const DeepCollectionEquality().hash(supplierEntries),selectedType,errorMessage);

@override
String toString() {
  return 'AccessoriesState(status: $status, accessories: $accessories, accessoryEntries: $accessoryEntries, supplierEntries: $supplierEntries, selectedType: $selectedType, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AccessoriesStateCopyWith<$Res>  {
  factory $AccessoriesStateCopyWith(AccessoriesState value, $Res Function(AccessoriesState) _then) = _$AccessoriesStateCopyWithImpl;
@useResult
$Res call({
 Status status, List<AccessoryModel> accessories, List<AccessoryEntryModel> accessoryEntries, List<SupplierEntryModel> supplierEntries, AccessoryTypeModel? selectedType, String? errorMessage
});


$AccessoryTypeModelCopyWith<$Res>? get selectedType;

}
/// @nodoc
class _$AccessoriesStateCopyWithImpl<$Res>
    implements $AccessoriesStateCopyWith<$Res> {
  _$AccessoriesStateCopyWithImpl(this._self, this._then);

  final AccessoriesState _self;
  final $Res Function(AccessoriesState) _then;

/// Create a copy of AccessoriesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? accessories = null,Object? accessoryEntries = null,Object? supplierEntries = null,Object? selectedType = freezed,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,accessories: null == accessories ? _self.accessories : accessories // ignore: cast_nullable_to_non_nullable
as List<AccessoryModel>,accessoryEntries: null == accessoryEntries ? _self.accessoryEntries : accessoryEntries // ignore: cast_nullable_to_non_nullable
as List<AccessoryEntryModel>,supplierEntries: null == supplierEntries ? _self.supplierEntries : supplierEntries // ignore: cast_nullable_to_non_nullable
as List<SupplierEntryModel>,selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as AccessoryTypeModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AccessoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessoryTypeModelCopyWith<$Res>? get selectedType {
    if (_self.selectedType == null) {
    return null;
  }

  return $AccessoryTypeModelCopyWith<$Res>(_self.selectedType!, (value) {
    return _then(_self.copyWith(selectedType: value));
  });
}
}


/// @nodoc


class _AccessoriesState implements AccessoriesState {
  const _AccessoriesState({required this.status, required final  List<AccessoryModel> accessories, required final  List<AccessoryEntryModel> accessoryEntries, required final  List<SupplierEntryModel> supplierEntries, this.selectedType, this.errorMessage}): _accessories = accessories,_accessoryEntries = accessoryEntries,_supplierEntries = supplierEntries;
  

@override final  Status status;
 final  List<AccessoryModel> _accessories;
@override List<AccessoryModel> get accessories {
  if (_accessories is EqualUnmodifiableListView) return _accessories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessories);
}

 final  List<AccessoryEntryModel> _accessoryEntries;
@override List<AccessoryEntryModel> get accessoryEntries {
  if (_accessoryEntries is EqualUnmodifiableListView) return _accessoryEntries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_accessoryEntries);
}

 final  List<SupplierEntryModel> _supplierEntries;
@override List<SupplierEntryModel> get supplierEntries {
  if (_supplierEntries is EqualUnmodifiableListView) return _supplierEntries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_supplierEntries);
}

@override final  AccessoryTypeModel? selectedType;
@override final  String? errorMessage;

/// Create a copy of AccessoriesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AccessoriesStateCopyWith<_AccessoriesState> get copyWith => __$AccessoriesStateCopyWithImpl<_AccessoriesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AccessoriesState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._accessories, _accessories)&&const DeepCollectionEquality().equals(other._accessoryEntries, _accessoryEntries)&&const DeepCollectionEquality().equals(other._supplierEntries, _supplierEntries)&&(identical(other.selectedType, selectedType) || other.selectedType == selectedType)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_accessories),const DeepCollectionEquality().hash(_accessoryEntries),const DeepCollectionEquality().hash(_supplierEntries),selectedType,errorMessage);

@override
String toString() {
  return 'AccessoriesState(status: $status, accessories: $accessories, accessoryEntries: $accessoryEntries, supplierEntries: $supplierEntries, selectedType: $selectedType, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$AccessoriesStateCopyWith<$Res> implements $AccessoriesStateCopyWith<$Res> {
  factory _$AccessoriesStateCopyWith(_AccessoriesState value, $Res Function(_AccessoriesState) _then) = __$AccessoriesStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, List<AccessoryModel> accessories, List<AccessoryEntryModel> accessoryEntries, List<SupplierEntryModel> supplierEntries, AccessoryTypeModel? selectedType, String? errorMessage
});


@override $AccessoryTypeModelCopyWith<$Res>? get selectedType;

}
/// @nodoc
class __$AccessoriesStateCopyWithImpl<$Res>
    implements _$AccessoriesStateCopyWith<$Res> {
  __$AccessoriesStateCopyWithImpl(this._self, this._then);

  final _AccessoriesState _self;
  final $Res Function(_AccessoriesState) _then;

/// Create a copy of AccessoriesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? accessories = null,Object? accessoryEntries = null,Object? supplierEntries = null,Object? selectedType = freezed,Object? errorMessage = freezed,}) {
  return _then(_AccessoriesState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,accessories: null == accessories ? _self._accessories : accessories // ignore: cast_nullable_to_non_nullable
as List<AccessoryModel>,accessoryEntries: null == accessoryEntries ? _self._accessoryEntries : accessoryEntries // ignore: cast_nullable_to_non_nullable
as List<AccessoryEntryModel>,supplierEntries: null == supplierEntries ? _self._supplierEntries : supplierEntries // ignore: cast_nullable_to_non_nullable
as List<SupplierEntryModel>,selectedType: freezed == selectedType ? _self.selectedType : selectedType // ignore: cast_nullable_to_non_nullable
as AccessoryTypeModel?,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AccessoriesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AccessoryTypeModelCopyWith<$Res>? get selectedType {
    if (_self.selectedType == null) {
    return null;
  }

  return $AccessoryTypeModelCopyWith<$Res>(_self.selectedType!, (value) {
    return _then(_self.copyWith(selectedType: value));
  });
}
}

// dart format on
