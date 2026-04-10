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

 String get id; String get name; String? get description; DateTime get createdAt; String? get imageUrl; bool get isCompleted; DateTime? get startDate; DateTime? get endDate;
/// Create a copy of TripItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripItemCopyWith<TripItem> get copyWith => _$TripItemCopyWithImpl<TripItem>(this as TripItem, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,imageUrl,isCompleted,startDate,endDate);

@override
String toString() {
  return 'TripItem(id: $id, name: $name, description: $description, createdAt: $createdAt, imageUrl: $imageUrl, isCompleted: $isCompleted, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class $TripItemCopyWith<$Res>  {
  factory $TripItemCopyWith(TripItem value, $Res Function(TripItem) _then) = _$TripItemCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, DateTime createdAt, String? imageUrl, bool isCompleted, DateTime? startDate, DateTime? endDate
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? imageUrl = freezed,Object? isCompleted = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  DateTime createdAt,  String? imageUrl,  bool isCompleted,  DateTime? startDate,  DateTime? endDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripItem() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.imageUrl,_that.isCompleted,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  DateTime createdAt,  String? imageUrl,  bool isCompleted,  DateTime? startDate,  DateTime? endDate)  $default,) {final _that = this;
switch (_that) {
case _TripItem():
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.imageUrl,_that.isCompleted,_that.startDate,_that.endDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  DateTime createdAt,  String? imageUrl,  bool isCompleted,  DateTime? startDate,  DateTime? endDate)?  $default,) {final _that = this;
switch (_that) {
case _TripItem() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.createdAt,_that.imageUrl,_that.isCompleted,_that.startDate,_that.endDate);case _:
  return null;

}
}

}

/// @nodoc


class _TripItem implements TripItem {
  const _TripItem({required this.id, required this.name, this.description, required this.createdAt, this.imageUrl, this.isCompleted = false, this.startDate, this.endDate});
  

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  DateTime createdAt;
@override final  String? imageUrl;
@override@JsonKey() final  bool isCompleted;
@override final  DateTime? startDate;
@override final  DateTime? endDate;

/// Create a copy of TripItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripItemCopyWith<_TripItem> get copyWith => __$TripItemCopyWithImpl<_TripItem>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.isCompleted, isCompleted) || other.isCompleted == isCompleted)&&(identical(other.startDate, startDate) || other.startDate == startDate)&&(identical(other.endDate, endDate) || other.endDate == endDate));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,description,createdAt,imageUrl,isCompleted,startDate,endDate);

@override
String toString() {
  return 'TripItem(id: $id, name: $name, description: $description, createdAt: $createdAt, imageUrl: $imageUrl, isCompleted: $isCompleted, startDate: $startDate, endDate: $endDate)';
}


}

/// @nodoc
abstract mixin class _$TripItemCopyWith<$Res> implements $TripItemCopyWith<$Res> {
  factory _$TripItemCopyWith(_TripItem value, $Res Function(_TripItem) _then) = __$TripItemCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, DateTime createdAt, String? imageUrl, bool isCompleted, DateTime? startDate, DateTime? endDate
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? createdAt = null,Object? imageUrl = freezed,Object? isCompleted = null,Object? startDate = freezed,Object? endDate = freezed,}) {
  return _then(_TripItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,isCompleted: null == isCompleted ? _self.isCompleted : isCompleted // ignore: cast_nullable_to_non_nullable
as bool,startDate: freezed == startDate ? _self.startDate : startDate // ignore: cast_nullable_to_non_nullable
as DateTime?,endDate: freezed == endDate ? _self.endDate : endDate // ignore: cast_nullable_to_non_nullable
as DateTime?,
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

/// @nodoc
mixin _$TripDestination {

 String get id; String get name; double get latitude; double get longitude; bool get isVisited;
/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TripDestinationCopyWith<TripDestination> get copyWith => _$TripDestinationCopyWithImpl<TripDestination>(this as TripDestination, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TripDestination&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isVisited, isVisited) || other.isVisited == isVisited));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,isVisited);

@override
String toString() {
  return 'TripDestination(id: $id, name: $name, latitude: $latitude, longitude: $longitude, isVisited: $isVisited)';
}


}

/// @nodoc
abstract mixin class $TripDestinationCopyWith<$Res>  {
  factory $TripDestinationCopyWith(TripDestination value, $Res Function(TripDestination) _then) = _$TripDestinationCopyWithImpl;
@useResult
$Res call({
 String id, String name, double latitude, double longitude, bool isVisited
});




}
/// @nodoc
class _$TripDestinationCopyWithImpl<$Res>
    implements $TripDestinationCopyWith<$Res> {
  _$TripDestinationCopyWithImpl(this._self, this._then);

  final TripDestination _self;
  final $Res Function(TripDestination) _then;

/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? latitude = null,Object? longitude = null,Object? isVisited = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isVisited: null == isVisited ? _self.isVisited : isVisited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TripDestination].
extension TripDestinationPatterns on TripDestination {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TripDetination value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TripDetination() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TripDetination value)  $default,){
final _that = this;
switch (_that) {
case _TripDetination():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TripDetination value)?  $default,){
final _that = this;
switch (_that) {
case _TripDetination() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double latitude,  double longitude,  bool isVisited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TripDetination() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.isVisited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double latitude,  double longitude,  bool isVisited)  $default,) {final _that = this;
switch (_that) {
case _TripDetination():
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.isVisited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double latitude,  double longitude,  bool isVisited)?  $default,) {final _that = this;
switch (_that) {
case _TripDetination() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.isVisited);case _:
  return null;

}
}

}

/// @nodoc


class _TripDetination implements TripDestination {
  const _TripDetination({required this.id, required this.name, required this.latitude, required this.longitude, this.isVisited = false});
  

@override final  String id;
@override final  String name;
@override final  double latitude;
@override final  double longitude;
@override@JsonKey() final  bool isVisited;

/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TripDetinationCopyWith<_TripDetination> get copyWith => __$TripDetinationCopyWithImpl<_TripDetination>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TripDetination&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.isVisited, isVisited) || other.isVisited == isVisited));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,isVisited);

@override
String toString() {
  return 'TripDestination(id: $id, name: $name, latitude: $latitude, longitude: $longitude, isVisited: $isVisited)';
}


}

/// @nodoc
abstract mixin class _$TripDetinationCopyWith<$Res> implements $TripDestinationCopyWith<$Res> {
  factory _$TripDetinationCopyWith(_TripDetination value, $Res Function(_TripDetination) _then) = __$TripDetinationCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double latitude, double longitude, bool isVisited
});




}
/// @nodoc
class __$TripDetinationCopyWithImpl<$Res>
    implements _$TripDetinationCopyWith<$Res> {
  __$TripDetinationCopyWithImpl(this._self, this._then);

  final _TripDetination _self;
  final $Res Function(_TripDetination) _then;

/// Create a copy of TripDestination
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? latitude = null,Object? longitude = null,Object? isVisited = null,}) {
  return _then(_TripDetination(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,isVisited: null == isVisited ? _self.isVisited : isVisited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
