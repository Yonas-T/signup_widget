import 'package:equatable/equatable.dart';

abstract class SignupState extends Equatable {}

class SignupInitialState extends SignupState {
  @override
  List<Object> get props => [];
}

class SignInNavigatedState extends SignupState {

  SignInNavigatedState();

  @override
  List<Object> get props => [];
}

class SignUpNavigatedState extends SignupState {

  SignUpNavigatedState();

  @override
  List<Object> get props => [];
}

class SignupSuccessState extends SignupState {

  SignupSuccessState();

  @override
  List<Object> get props => [];
}

class SignupFailedState extends SignupState {

  SignupFailedState();

  @override
  List<Object> get props => [];
}

