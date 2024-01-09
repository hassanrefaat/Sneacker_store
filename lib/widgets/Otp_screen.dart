import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import '../utils/styles.dart';
import '../views/login_screen.dart';
import 'def_button.dart';
import 'nav.dart';

class OtpScreen extends StatelessWidget {
   OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final pinController = TextEditingController();
    final focusNode = FocusNode();
    const  borderColor = Color.fromRGBO(150, 157, 156, 0.4);
    final defaultPinTheme = PinTheme(
      width: 55,
      height: 55,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: borderColor),
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              'OTP Verification',
              style: Styles.style32,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please check your email to see the\n verification code',
              style: Styles.style16gray,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Text('OTP Code',
                  style: Styles.style21,
                  textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Pinput(
              length: 4,
              controller: pinController,
              focusNode: focusNode,
              validator: (v) {
                if (v!.isEmpty || v.length < 6) {
                  return "Pin is required !";
                }
                return null;
              },
              defaultPinTheme: defaultPinTheme,
            ),
            SizedBox(
              height: 20,
            ),
            defaultButton(function: ()
            {
              navigateAndFinish(context, Login_Screen());
            },
                text: 'Verify')

          ],
        ),
      ),

    );
  }
}
