import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_test/blocs/signup_bloc/signup_bloc.dart';
import 'package:login_test/blocs/signup_bloc/signup_state.dart';

import '../../../blocs/signup_bloc/signup_event.dart';
import '../../../constants/colors.dart';
import '../../../constants/font_size.dart';

class ToggleWidget extends StatefulWidget {
  const ToggleWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ToggleWidget> createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: BlocListener<SignupBloc, SignupState>(
            listener: ((context, state) {}),
            child: BlocBuilder<SignupBloc, SignupState>(
              builder: ((context, state) {
                if (state is SignupInitialState) {
                  return const ButtonChange(
                    isSignin: false,
                  );
                }
                if (state is SignUpNavigatedState) {
                  return const ButtonChange(
                    isSignin: false,
                  );
                }

                if (state is SignInNavigatedState) {
                  return const ButtonChange(
                    isSignin: true,
                  );
                }
                return Container();
              }),
            )));
  }
}

class ButtonChange extends StatelessWidget {
  final bool isSignin;
  const ButtonChange({
    required this.isSignin,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (() {
            BlocProvider.of<SignupBloc>(context).add(ClickSigninTab());
          }),
          child: Column(
            children: [
              Text(
                'Sign In',
                style: TextStyle(
                  fontSize: kNormalFont,
                  color: isSignin ? kBlack : kGreyText,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              isSignin
                  ? Container(
                      width: 55,
                      height: 0.5,
                      color: kBlack,
                    )
                  : Container(),
            ],
          ),
        ),
        const SizedBox(
          width: 36,
        ),
        InkWell(
          onTap: () {
            BlocProvider.of<SignupBloc>(context).add(ClickSignupTab());
          },
          child: Column(
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                    fontSize: kNormalFont,
                    color: isSignin ? kGreyText : kBlack),
              ),
              const SizedBox(
                height: 4,
              ),
              isSignin
                  ? Container()
                  : Container(
                      width: 55,
                      height: 0.5,
                      color: kBlack,
                    )
            ],
          ),
        )
      ],
    );
  }
}
