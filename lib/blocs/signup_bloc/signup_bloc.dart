import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'signup_event.dart';
import 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc(SignupState initialState) : super(initialState);

  @override
  SignupState get initialState => SignupInitialState();

  @override
  Stream<SignupState> mapEventToState(SignupEvent event) async* {
    if (event is AppStartedEvent) {
      yield SignupInitialState();
    }

    if (event is ClickSigninTab) {
      yield SignInNavigatedState();
    }
    if (event is ClickSignupTab) {
      yield SignUpNavigatedState();
    }
  }
}
