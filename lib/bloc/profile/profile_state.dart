part of 'profile_bloc.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;

  const factory ProfileState.loadedProfile(CustomerModel customer) =
      ProfileLoaded;
  const factory ProfileState.updatedProfile(String message) = ProfileUpdated;
  const factory ProfileState.failure({required Map<String, dynamic> error}) =
      ProfileFailure;
  const factory ProfileState.error(String message) = ProfileError;
}