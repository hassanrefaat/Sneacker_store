import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneaker_store/views/Home_body_screen.dart';
import 'package:sneaker_store/views/recovery_password.dart';

import '../features/lay_out/cubit.dart';
import '../features/lay_out/lay_out_states.dart';
import '../main_lay_out/main_lay_out.dart';
import '../utils/styles.dart';
import '../widgets/def_button.dart';
import '../widgets/login_form.dart';
import '../widgets/nav.dart';
import '../widgets/new_user_text.dart';

class Login_Screen extends StatefulWidget {
  Login_Screen({super.key});

  @override
  State<Login_Screen> createState() => _Login_ScreenState();
}

class _Login_ScreenState extends State<Login_Screen> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<YourLegCubit,YourLegStates>(

      listener: ( context,  state) {  },
      builder: (BuildContext context, YourLegStates state) => Scaffold(
          body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsetsDirectional.only(
              top: 120,
              start: 20,
              end: 20,
            ),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hello Again!',
                    style: Styles.style32,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Fill your details or continue with\nsocial media',
                    style: Styles.style16gray,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  LoginForm(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                      onPressed: () {
                        navigateTo(context, RecoveryPassword());
                      },
                      child: Text('Recovery Password ?', style: Styles.style12),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  defaultButton(
                      function: () {
                        if(formKey.currentState!.validate())
                        {
                          setState(() {

                          });
                          navigateAndFinish(context, MainLayout());
                          print(state);


                        }

                      },
                      text: 'Sign in'),
                  SizedBox(
                    height: 25,
                  ),
                  defaultWhiteButton(function: () {}, text: 'Sign In with Google'),
                  SizedBox(
                    height: 160,
                  ),

                  NewUserText(),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }
}
