import 'package:equatable/equatable.dart';

abstract class SignupEvent extends Equatable {}

class AppStartedEvent extends SignupEvent {
  @override
  List<Object> get props => [];
}

class ClickSigninTab extends SignupEvent {
  @override
  List<Object> get props => [];
}

class ClickSignupTab extends SignupEvent {
  @override
  List<Object> get props => [];
}


class Signin extends SignupEvent {
  @override
  List<Object> get props => [];
}

class Signup extends SignupEvent {
  @override
  List<Object> get props => [];
}

class SignupWithGoogle extends SignupEvent {
  @override
  List<Object> get props => [];
}

class SignupWithApple extends SignupEvent {
  @override
  List<Object> get props => [];
}