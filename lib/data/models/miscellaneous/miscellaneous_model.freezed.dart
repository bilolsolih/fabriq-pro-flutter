// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'miscellaneous_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Miscellaneous {

 int get id; String get name; String get model; String get detail; String get quantity; String get date;
/// Create a copy of Miscellaneous
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MiscellaneousCopyWith<Miscellaneous> get copyWith => _$MiscellaneousCopyWithImpl<Miscellaneous>(this as Miscellaneous, _$identity);

  /// Serializes this Miscellaneous to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Miscellaneous&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.model, model) || other.model == model)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,model,detail,quantity,date);

@override
String toString() {
  return 'Miscellaneous(id: $id, name: $name, model: $model, detail: $detail, quantity: $quantity, date: $date)';
}


}

/// @nodoc
abstract mixin class $MiscellaneousCopyWith<$Res>  {
  factory $MiscellaneousCopyWith(Miscellaneous value, $Res Function(Miscellaneous) _then) = _$MiscellaneousCopyWithImpl;
@useResult
$Res call({
 int id, String name, String model, String detail, String quantity, String date
});




}
/// @nodoc
class _$MiscellaneousCopyWithImpl<$Res>
    implements $MiscellaneousCopyWith<$Res> {
  _$MiscellaneousCopyWithImpl(this._self, this._then);

  final Miscellaneous _self;
  final $Res Function(Miscellaneous) _then;

/// Create a copy of Miscellaneous
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? model = null,Object? detail = null,Object? quantity = null,Object? date = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Miscellaneous implements Miscellaneous {
  const _Miscellaneous({required this.id, required this.name, required this.model, required this.detail, required this.quantity, required this.date});
  factory _Miscellaneous.fromJson(Map<String, dynamic> json) => _$MiscellaneousFromJson(json);

@override final  int id;
@override final  String name;
@override final  String model;
@override final  String detail;
@override final  String quantity;
@override final  String date;

/// Create a copy of Miscellaneous
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MiscellaneousCopyWith<_Miscellaneous> get copyWith => __$MiscellaneousCopyWithImpl<_Miscellaneous>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MiscellaneousToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Miscellaneous&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.model, model) || other.model == model)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.date, date) || other.date == date));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,model,detail,quantity,date);

@override
String toString() {
  return 'Miscellaneous(id: $id, name: $name, model: $model, detail: $detail, quantity: $quantity, date: $date)';
}


}

/// @nodoc
abstract mixin class _$MiscellaneousCopyWith<$Res> implements $MiscellaneousCopyWith<$Res> {
  factory _$MiscellaneousCopyWith(_Miscellaneous value, $Res Function(_Miscellaneous) _then) = __$MiscellaneousCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String model, String detail, String quantity, String date
});




}
/// @nodoc
class __$MiscellaneousCopyWithImpl<$Res>
    implements _$MiscellaneousCopyWith<$Res> {
  __$MiscellaneousCopyWithImpl(this._self, this._then);

  final _Miscellaneous _self;
  final $Res Function(_Miscellaneous) _then;

/// Create a copy of Miscellaneous
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? model = null,Object? detail = null,Object? quantity = null,Object? date = null,}) {
  return _then(_Miscellaneous(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,model: null == model ? _self.model : model // ignore: cast_nullable_to_non_nullable
as String,detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String,quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as String,date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
