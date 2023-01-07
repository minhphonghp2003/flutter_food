import 'package:bloc/bloc.dart';
import 'package:food/authenticate/bloc/AuthEvent.dart';
import 'package:food/authenticate/bloc/AuthState.dart';
import 'package:food/authenticate/repository.dart';

class AuthBloc extends Bloc<Auth, AuthState> {
  final UserRepository userRepository = new UserRepository();
  AuthBloc() : super(AuthStateInitial()) {
    on<AuthLoggedIn>(_authLoggedIn);
    on<AuthRegistered>(_authRegistered);
    on<AuthProfileFetched>(_authProfileFetched);
  }

  void _authLoggedIn(AuthLoggedIn event, emit) async {
    Map<dynamic, dynamic> response =
        await userRepository.login(event.username, event.password);
    if (response.containsKey("error")) {
      emit(AuthStateLoginFailure(message: "No valid account"));
    } else {
      emit(AuthStateLogInSuccess(authCredentials: response));
    }
  }

  void _authRegistered(event, emit) {
    print(event);
  }

  void _authProfileFetched(event, emit) {
    print(event);
  }
}

void main() async {
  AuthBloc bloc = new AuthBloc();
  print(bloc.state);
  bloc.add(AuthLoggedIn(username: "user7", password: "user7"));
  await Future.delayed(Duration(seconds: 5));
  print(bloc.state); // 1
  await bloc.close();
  // bloc.add(AuthRegistered());
}
