// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileEvent {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProfileEvent()';
}


}

/// @nodoc
class $ProfileEventCopyWith<$Res>  {
$ProfileEventCopyWith(ProfileEvent _, $Res Function(ProfileEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileEvent].
extension ProfileEventPatterns on ProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _LoadProfile value)?  loadProfile,TResult Function( _UpdateProfile value)?  updateProfile,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _LoadProfile value)  loadProfile,required TResult Function( _UpdateProfile value)  updateProfile,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _LoadProfile():
return loadProfile(_that);case _UpdateProfile():
return updateProfile(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _LoadProfile value)?  loadProfile,TResult? Function( _UpdateProfile value)?  updateProfile,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _LoadProfile() when loadProfile != null:
return loadProfile(_that);case _UpdateProfile() when updateProfile != null:
return updateProfile(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  loadProfile,TResult Function( String name,  String email,  File? image,  String? password,  String? passwordConfirmation)?  updateProfile,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadProfile() when loadProfile != null:
return loadProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.name,_that.email,_that.image,_that.password,_that.passwordConfirmation);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  loadProfile,required TResult Function( String name,  String email,  File? image,  String? password,  String? passwordConfirmation)  updateProfile,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _LoadProfile():
return loadProfile();case _UpdateProfile():
return updateProfile(_that.name,_that.email,_that.image,_that.password,_that.passwordConfirmation);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  loadProfile,TResult? Function( String name,  String email,  File? image,  String? password,  String? passwordConfirmation)?  updateProfile,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _LoadProfile() when loadProfile != null:
return loadProfile();case _UpdateProfile() when updateProfile != null:
return updateProfile(_that.name,_that.email,_that.image,_that.password,_that.passwordConfirmation);case _:
  return null;

}
}

}

/// @nodoc


class _Started implements ProfileEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProfileEvent.started()';
}


}




/// @nodoc


class _LoadProfile implements ProfileEvent {
  const _LoadProfile();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProfileEvent.loadProfile()';
}


}




/// @nodoc


class _UpdateProfile implements ProfileEvent {
  const _UpdateProfile({required this.name, required this.email, this.image, this.password, this.passwordConfirmation});
  

 final  String name;
 final  String email;
 final  File? image;
 final  String? password;
 final  String? passwordConfirmation;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateProfileCopyWith<_UpdateProfile> get copyWith => __$UpdateProfileCopyWithImpl<_UpdateProfile>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateProfile&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.image, image) || other.image == image)&&(identical(other.password, password) || other.password == password)&&(identical(other.passwordConfirmation, passwordConfirmation) || other.passwordConfirmation == passwordConfirmation));
}


@override
int get hashCode {
    return Object.hash(runtimeType,name,email,image,password,passwordConfirmation);
}

@override
String toString() {
    return 'ProfileEvent.updateProfile(name: $name, email: $email, image: $image, password: $password, passwordConfirmation: $passwordConfirmation)';
}


}

/// @nodoc
abstract mixin class _$UpdateProfileCopyWith<$Res> implements $ProfileEventCopyWith<$Res> {
  factory _$UpdateProfileCopyWith(_UpdateProfile value, $Res Function(_UpdateProfile) _then) = __$UpdateProfileCopyWithImpl;
@useResult
$Res call({
 String name, String email, File? image, String? password, String? passwordConfirmation
});




}
/// @nodoc
class __$UpdateProfileCopyWithImpl<$Res>
    implements _$UpdateProfileCopyWith<$Res> {
  __$UpdateProfileCopyWithImpl(this._self, this._then);

  final _UpdateProfile _self;
  final $Res Function(_UpdateProfile) _then;

/// Create a copy of ProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? name = null,Object? email = null,Object? image = freezed,Object? password = freezed,Object? passwordConfirmation = freezed,}) {
  return _then(_UpdateProfile(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as File?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String?,passwordConfirmation: freezed == passwordConfirmation ? _self.passwordConfirmation : passwordConfirmation // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProfileState {





@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProfileState()';
}


}

/// @nodoc
class $ProfileStateCopyWith<$Res>  {
$ProfileStateCopyWith(ProfileState _, $Res Function(ProfileState) __);
}


/// Adds pattern-matching-related methods to [ProfileState].
extension ProfileStatePatterns on ProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ProfileInitial value)?  initial,TResult Function( ProfileLoading value)?  loading,TResult Function( ProfileLoaded value)?  loadedProfile,TResult Function( ProfileUpdated value)?  updatedProfile,TResult Function( ProfileFailure value)?  failure,TResult Function( ProfileError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileLoaded() when loadedProfile != null:
return loadedProfile(_that);case ProfileUpdated() when updatedProfile != null:
return updatedProfile(_that);case ProfileFailure() when failure != null:
return failure(_that);case ProfileError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ProfileInitial value)  initial,required TResult Function( ProfileLoading value)  loading,required TResult Function( ProfileLoaded value)  loadedProfile,required TResult Function( ProfileUpdated value)  updatedProfile,required TResult Function( ProfileFailure value)  failure,required TResult Function( ProfileError value)  error,}){
final _that = this;
switch (_that) {
case ProfileInitial():
return initial(_that);case ProfileLoading():
return loading(_that);case ProfileLoaded():
return loadedProfile(_that);case ProfileUpdated():
return updatedProfile(_that);case ProfileFailure():
return failure(_that);case ProfileError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ProfileInitial value)?  initial,TResult? Function( ProfileLoading value)?  loading,TResult? Function( ProfileLoaded value)?  loadedProfile,TResult? Function( ProfileUpdated value)?  updatedProfile,TResult? Function( ProfileFailure value)?  failure,TResult? Function( ProfileError value)?  error,}){
final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial(_that);case ProfileLoading() when loading != null:
return loading(_that);case ProfileLoaded() when loadedProfile != null:
return loadedProfile(_that);case ProfileUpdated() when updatedProfile != null:
return updatedProfile(_that);case ProfileFailure() when failure != null:
return failure(_that);case ProfileError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CustomerModel customer)?  loadedProfile,TResult Function( String message)?  updatedProfile,TResult Function( Map<String, dynamic> error)?  failure,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileLoaded() when loadedProfile != null:
return loadedProfile(_that.customer);case ProfileUpdated() when updatedProfile != null:
return updatedProfile(_that.message);case ProfileFailure() when failure != null:
return failure(_that.error);case ProfileError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CustomerModel customer)  loadedProfile,required TResult Function( String message)  updatedProfile,required TResult Function( Map<String, dynamic> error)  failure,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case ProfileInitial():
return initial();case ProfileLoading():
return loading();case ProfileLoaded():
return loadedProfile(_that.customer);case ProfileUpdated():
return updatedProfile(_that.message);case ProfileFailure():
return failure(_that.error);case ProfileError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CustomerModel customer)?  loadedProfile,TResult? Function( String message)?  updatedProfile,TResult? Function( Map<String, dynamic> error)?  failure,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case ProfileInitial() when initial != null:
return initial();case ProfileLoading() when loading != null:
return loading();case ProfileLoaded() when loadedProfile != null:
return loadedProfile(_that.customer);case ProfileUpdated() when updatedProfile != null:
return updatedProfile(_that.message);case ProfileFailure() when failure != null:
return failure(_that.error);case ProfileError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class ProfileInitial implements ProfileState {
  const ProfileInitial();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProfileState.initial()';
}


}




/// @nodoc


class ProfileLoading implements ProfileState {
  const ProfileLoading();
  






@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
    return 'ProfileState.loading()';
}


}




/// @nodoc


class ProfileLoaded implements ProfileState {
  const ProfileLoaded(this.customer);
  

 final  CustomerModel customer;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileLoadedCopyWith<ProfileLoaded> get copyWith => _$ProfileLoadedCopyWithImpl<ProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileLoaded&&(identical(other.customer, customer) || other.customer == customer));
}


@override
int get hashCode {
    return Object.hash(runtimeType,customer);
}

@override
String toString() {
    return 'ProfileState.loadedProfile(customer: $customer)';
}


}

/// @nodoc
abstract mixin class $ProfileLoadedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileLoadedCopyWith(ProfileLoaded value, $Res Function(ProfileLoaded) _then) = _$ProfileLoadedCopyWithImpl;
@useResult
$Res call({
 CustomerModel customer
});




}
/// @nodoc
class _$ProfileLoadedCopyWithImpl<$Res>
    implements $ProfileLoadedCopyWith<$Res> {
  _$ProfileLoadedCopyWithImpl(this._self, this._then);

  final ProfileLoaded _self;
  final $Res Function(ProfileLoaded) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? customer = null,}) {
  return _then(ProfileLoaded(
null == customer ? _self.customer : customer // ignore: cast_nullable_to_non_nullable
as CustomerModel,
  ));
}


}

/// @nodoc


class ProfileUpdated implements ProfileState {
  const ProfileUpdated(this.message);
  

 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileUpdatedCopyWith<ProfileUpdated> get copyWith => _$ProfileUpdatedCopyWithImpl<ProfileUpdated>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileUpdated&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'ProfileState.updatedProfile(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileUpdatedCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileUpdatedCopyWith(ProfileUpdated value, $Res Function(ProfileUpdated) _then) = _$ProfileUpdatedCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfileUpdatedCopyWithImpl<$Res>
    implements $ProfileUpdatedCopyWith<$Res> {
  _$ProfileUpdatedCopyWithImpl(this._self, this._then);

  final ProfileUpdated _self;
  final $Res Function(ProfileUpdated) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfileUpdated(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ProfileFailure implements ProfileState {
  const ProfileFailure({required  Map<String, dynamic> error}): _error = error;
  

 final  Map<String, dynamic> _error;
 Map<String, dynamic> get error {
  if (_error is EqualUnmodifiableMapView) return _error;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_error);
}


/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileFailureCopyWith<ProfileFailure> get copyWith => _$ProfileFailureCopyWithImpl<ProfileFailure>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileFailure&&const DeepCollectionEquality().equals(other.error, _error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_error));
}

@override
String toString() {
    return 'ProfileState.failure(error: $error)';
}


}

/// @nodoc
abstract mixin class $ProfileFailureCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileFailureCopyWith(ProfileFailure value, $Res Function(ProfileFailure) _then) = _$ProfileFailureCopyWithImpl;
@useResult
$Res call({
 Map<String, dynamic> error
});




}
/// @nodoc
class _$ProfileFailureCopyWithImpl<$Res>
    implements $ProfileFailureCopyWith<$Res> {
  _$ProfileFailureCopyWithImpl(this._self, this._then);

  final ProfileFailure _self;
  final $Res Function(ProfileFailure) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(ProfileFailure(
error: null == error ? _self._error : error // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,
  ));
}


}

/// @nodoc


class ProfileError implements ProfileState {
  const ProfileError(this.message);
  

 final  String message;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileErrorCopyWith<ProfileError> get copyWith => _$ProfileErrorCopyWithImpl<ProfileError>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode {
    return Object.hash(runtimeType,message);
}

@override
String toString() {
    return 'ProfileState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $ProfileErrorCopyWith<$Res> implements $ProfileStateCopyWith<$Res> {
  factory $ProfileErrorCopyWith(ProfileError value, $Res Function(ProfileError) _then) = _$ProfileErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ProfileErrorCopyWithImpl<$Res>
    implements $ProfileErrorCopyWith<$Res> {
  _$ProfileErrorCopyWithImpl(this._self, this._then);

  final ProfileError _self;
  final $Res Function(ProfileError) _then;

/// Create a copy of ProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ProfileError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
