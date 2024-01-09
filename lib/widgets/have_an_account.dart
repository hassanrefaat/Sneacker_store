import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../views/login_screen.dart';
import 'nav.dart';

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [

        Text('Already Have Account?',
          style: Styles.style16gray,
        ),
        TextButton(onPressed: ()
        {
          navigateTo(context, Login_Screen());
        }, child: Text('Log In',
          style: Styles.style16,
        ))
      ],
    );
  }
}
