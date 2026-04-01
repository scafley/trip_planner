// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TripItem {

 String get id; String get name; String? get description; DateTime get createdAt; String? get imageUrl;
/// Create a copy of TripItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripItemCopyWith<TripItem> get copyWith => _$TripItemCopyWithImpl<TripItem>(this as TripItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,imageUrl);

@override
String toString() {
  return 'TripItem(id: $id, name: $name, description: $description, createdAt: $createdAt, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $TripItemCopyWith<$Res>  {
  factory $TripItemCopyWith(TripItem value, $Res Function(TripItem) _then) = _$TripItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, DateTime createdAt, String? imageUrl
});




}
/// @nodoc
class _$TripItemCopyWithImpl<$Res>
    implements $TripItemCopyWith<$Res> {
  _$TripItemCopyWithImpl(this._self, this._then);

  final TripItem _self;
  final $Res Function(TripItem) _then;

/// Create a copy of TripItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TripItem].
extension TripItemPatterns on TripItem {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripItem() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripItem value)  $default,){
final _that = this;
switch (_that) {
case _TripItem():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripItem value)?  $default,){
final _that = this;
switch (_that) {
case _TripItem() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  DateTime createdAt,  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripItem() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.imageUrl);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  DateTime createdAt,  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _TripItem():
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.imageUrl);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  DateTime createdAt,  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _TripItem() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _TripItem implements TripItem {
  const _TripItem({required this.id, required this.name, this.description, required this.createdAt, this.imageUrl});
  

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  DateTime createdAt;
@override final  String? imageUrl;

/// Create a copy of TripItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripItemCopyWith<_TripItem> get copyWith => __$TripItemCopyWithImpl<_TripItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,imageUrl);

@override
String toString() {
  return 'TripItem(id: $id, name: $name, description: $description, createdAt: $createdAt, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$TripItemCopyWith<$Res> implements $TripItemCopyWith<$Res> {
  factory _$TripItemCopyWith(_TripItem value, $Res Function(_TripItem) _then) = __$TripItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, DateTime createdAt, String? imageUrl
});




}
/// @nodoc
class __$TripItemCopyWithImpl<$Res>
    implements _$TripItemCopyWith<$Res> {
  __$TripItemCopyWithImpl(this._self, this._then);

  final _TripItem _self;
  final $Res Function(_TripItem) _then;

/// Create a copy of TripItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? imageUrl = freezed,}) {
  return _then(_TripItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$TripExpense {

 String get id; String get name; String? get description; double get amount; bool get isPaid; DateTime? get date;
/// Create a copy of TripExpense
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripExpenseCopyWith<TripExpense> get copyWith => _$TripExpenseCopyWithImpl<TripExpense>(this as TripExpense, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripExpense&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,amount,isPaid,date);

@override
String toString() {
  return 'TripExpense(id: $id, name: $name, description: $description, amount: $amount, isPaid: $isPaid, date: $date)';
}


}

/// @nodoc
abstract mixin class $TripExpenseCopyWith<$Res>  {
  factory $TripExpenseCopyWith(TripExpense value, $Res Function(TripExpense) _then) = _$TripExpenseCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, double amount, bool isPaid, DateTime? date
});




}
/// @nodoc
class _$TripExpenseCopyWithImpl<$Res>
    implements $TripExpenseCopyWith<$Res> {
  _$TripExpenseCopyWithImpl(this._self, this._then);

  final TripExpense _self;
  final $Res Function(TripExpense) _then;

/// Create a copy of TripExpense
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? amount = null,Object? isPaid = null,Object? date = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [TripExpense].
extension TripExpensePatterns on TripExpense {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripExpense value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripExpense() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripExpense value)  $default,){
final _that = this;
switch (_that) {
case _TripExpense():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripExpense value)?  $default,){
final _that = this;
switch (_that) {
case _TripExpense() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  double amount,  bool isPaid,  DateTime? date)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripExpense() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.amount,_that.isPaid,_that.date);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  double amount,  bool isPaid,  DateTime? date)  $default,) {final _that = this;
switch (_that) {
case _TripExpense():
return $default(_that.id,_that.name,_that.description,_that.amount,_that.isPaid,_that.date);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  double amount,  bool isPaid,  DateTime? date)?  $default,) {final _that = this;
switch (_that) {
case _TripExpense() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.amount,_that.isPaid,_that.date);case _:
  return null;

}
}

}

/// @nodoc


class _TripExpense implements TripExpense {
  const _TripExpense({required this.id, required this.name, this.description, required this.amount, this.isPaid = false, this.date});
  

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  double amount;
@override@JsonKey() final  bool isPaid;
@override final  DateTime? date;

/// Create a copy of TripExpense
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripExpenseCopyWith<_TripExpense> get copyWith => __$TripExpenseCopyWithImpl<_TripExpense>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripExpense&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.isPaid, isPaid) || other.isPaid == isPaid)&&(identical(other.date, date) || other.date == date));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,amount,isPaid,date);

@override
String toString() {
  return 'TripExpense(id: $id, name: $name, description: $description, amount: $amount, isPaid: $isPaid, date: $date)';
}


}

/// @nodoc
abstract mixin class _$TripExpenseCopyWith<$Res> implements $TripExpenseCopyWith<$Res> {
  factory _$TripExpenseCopyWith(_TripExpense value, $Res Function(_TripExpense) _then) = __$TripExpenseCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, double amount, bool isPaid, DateTime? date
});




}
/// @nodoc
class __$TripExpenseCopyWithImpl<$Res>
    implements _$TripExpenseCopyWith<$Res> {
  __$TripExpenseCopyWithImpl(this._self, this._then);

  final _TripExpense _self;
  final $Res Function(_TripExpense) _then;

/// Create a copy of TripExpense
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? amount = null,Object? isPaid = null,Object? date = freezed,}) {
  return _then(_TripExpense(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,isPaid: null == isPaid ? _self.isPaid : isPaid // ignore: cast_nullable_to_non_nullable
as bool,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
