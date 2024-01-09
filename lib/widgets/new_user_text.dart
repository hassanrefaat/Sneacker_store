import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../views/create_account_screen.dart';
import 'nav.dart';


class NewUserText extends StatelessWidget {
  const NewUserText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('New User ?',
        style: Styles.style16gray,
        ),
        TextButton(onPressed: ()
        {
          navigateTo(context, CreateAccount());
        }, child: Text('Create Account',
        style: Styles.style16,
        ))
      ],
    );
  }
}
