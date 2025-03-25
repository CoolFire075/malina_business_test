part of 'auth_registration_bloc.dart';

class AuthRegistrationEvent extends Equatable {
  const AuthRegistrationEvent();

  @override
  List<Object?> get props => [];
}

class AuthRegistrationButtonClicked extends AuthRegistrationEvent {
  final String login;
  final String password;
  final String password2;

  const AuthRegistrationButtonClicked({
    required this.login,
    required this.password,
    required this.password2,
  });
}
