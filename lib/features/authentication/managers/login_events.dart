part of 'login_bloc.dart';

sealed class LoginEvent {}

final class LoginLoginEvent extends LoginEvent {
  final String login, password;

  LoginLoginEvent({required this.login, required this.password});
}
