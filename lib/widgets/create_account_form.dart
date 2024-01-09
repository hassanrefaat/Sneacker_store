import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/lay_out/cubit.dart';
import '../features/lay_out/lay_out_states.dart';
import 'def_form.dart';

class CreateAccountForm extends StatelessWidget {
  CreateAccountForm({super.key});
  var nameController = TextEditingController();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>YourLegCubit(),
      child: BlocConsumer<YourLegCubit,YourLegStates>(

        listener: (BuildContext context, YourLegStates state) {  },
        builder: (BuildContext context, YourLegStates state) {
          var appCubit = YourLegCubit.get(context);
          return  SingleChildScrollView(
          child: Column(
            children: [
              defaultFormField(
                  prefix: Icons.person_outline,
                  controller: nameController,
                  type: TextInputType.name,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your name';
                    }
                    return null;

                  },
                  label: 'Email Address'),
              const SizedBox(
                height: 25,
              ),
              defaultFormField(
                  prefix: Icons.email_outlined,
                  controller: emailController,
                  type: TextInputType.emailAddress,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter your E-mail';
                    }
                    return null;
                  },
                  label: 'Email Address'),
              const SizedBox(
                height: 25,
              ),
              defaultFormField(
                  isPassword: YourLegCubit.get(context).showPassword,
                  suffixPressed:()
                  {
                    YourLegCubit.get(context).switchPasswordVisibility();
                  }
                  ,
                  prefix: Icons.lock_outline,
                  suffix:appCubit.showPassword ? Icons.visibility_off:
                  Icons.visibility,
                  controller: passwordController,
                  type: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'password is to short';
                    }
                    return null;
                  },
                  onTap: ()
                  {


                  },
                  label: 'Password')
            ],
          ),
        );  },
             ),
    );
  }
}
