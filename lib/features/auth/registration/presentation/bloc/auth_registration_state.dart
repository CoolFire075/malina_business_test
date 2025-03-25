part of 'auth_registration_bloc.dart';

class AuthRegistrationState extends Equatable {
  final AuthRegistrationInfoModel? data;
  final bool isLoading;
  final bool isSuccess;

  const AuthRegistrationState({this.data, required this.isLoading, required this.isSuccess});

  AuthRegistrationState copyWith({
    AuthRegistrationInfoModel? data,
    bool? isLoading,
    bool? isSuccess,
  }) {
    return AuthRegistrationState(
      data: data ?? this.data,
      isLoading: isLoading ?? this.isLoading,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }

  @override
  List<Object?> get props => [
        data,
        isLoading,
        isSuccess,
      ];
}
