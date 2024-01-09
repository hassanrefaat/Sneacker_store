import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/lay_out/cubit.dart';
import '../features/lay_out/lay_out_states.dart';
import '../utils/styles.dart';
import '../widgets/create_account_form.dart';
import '../widgets/def_button.dart';
import '../widgets/have_an_account.dart';
import '../widgets/nav.dart';
import 'login_screen.dart';


class CreateAccount extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
   CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>YourLegCubit(),
      child: BlocConsumer<YourLegCubit,YourLegStates>(
        listener: (BuildContext context, state) {  },
        builder: (BuildContext context, Object? state)=> Scaffold(
          appBar: AppBar(),
            body: Center(
              child: SingleChildScrollView(
                child: Padding(
                padding:  EdgeInsets.only(
                  top: 60,
                  left: 20,
                  right: 20
                ),
                  child: Form(
                    key: formKey,
                    child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                    Text(
                      'Register Account',
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
                    CreateAccountForm(),
                    SizedBox(
                      height: 20,
                    ),
                    defaultButton(
                        function: () {
                          if(formKey.currentState!.validate())
                          {
                            navigateAndFinish(context, Login_Screen());

                          }
                        },
                        text: 'Sign Up'),
                    SizedBox(
                      height: 25,
                    ),
                    defaultWhiteButton(function: () {},
                        text: 'Sign In with Google'),
                    SizedBox(
                      height: 60,
                    ),
                    HaveAnAccount(),
                            ],
                          ),
                  ),
                    ),
              ),
            )),
      ),
    );
  }
}
