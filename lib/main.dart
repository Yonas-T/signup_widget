import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_test/blocs/signup_bloc/signup_state.dart';
import 'package:login_test/screens/signup_screen/signup_screen.dart';

import 'blocs/signup_bloc/signup_bloc.dart';
import 'blocs/signup_bloc/signup_event.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Signup Demo',
      theme: ThemeData(
        fontFamily: 'DM_Sans',
      ),
      home: BlocProvider(
          create: (context) =>
              SignupBloc(SignupInitialState())..add(AppStartedEvent()),
          child: SignupScreen()),
    );
  }
}
