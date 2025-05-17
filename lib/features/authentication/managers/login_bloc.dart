import 'package:fabriq_pro/data/models/login_model.dart';
import 'package:fabriq_pro/data/repositories/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

part 'login_events.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required AuthRepository authRepo})
    : _authRepo = authRepo,
      super(LoginState.initial()) {
    on<LoginLoginEvent>(_onLogin);
  }

  final AuthRepository _authRepo;

  Future _onLogin(LoginLoginEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWith(status: LoginStatus.loading));
    final loginModel = LoginModel(login: event.login, password: event.password);
    try {
      final token = await _authRepo.login(loginModel);
      if (token != null) {
        emit(state.copyWith(status: LoginStatus.success));
      } else {
        emit(state.copyWith(status: LoginStatus.error));
      }
    }catch (ex) {
      emit(state.copyWith(status: LoginStatus.error, errorMessage: ex.toString()));
    }
  }
}
