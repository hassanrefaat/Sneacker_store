import 'package:flutter/material.dart';

import '../utils/styles.dart';

Widget defaultButton({
  double width = double.infinity,
  bool isUpperCase = true,
  double radius = 0.0,
  List<Color>? color,
  required Function()? function,
  required String text,
}) =>
    Container(
      height: 50,
      width: 335,
      alignment: Alignment.center,
      decoration:  BoxDecoration(
        color: Color(0xFF0D6EFD),

          borderRadius: BorderRadius.circular(14),
          ),
      child: MaterialButton(

        onPressed: function,
        child: Center(
          child: Text(
              text,
            style:  TextStyle(

                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
    );

Widget defaultWhiteButton({
  double width = double.infinity,
  bool isUpperCase = true,
  double radius = 0.0,
  List<Color>? color,
  IconData ? Icon,
  required Function()? function,
  required String text,
}) =>
    Container(
      height: 50,
      width: 335,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color:  Color(0xFFF6F6F8),

        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Row(
        children: [

          MaterialButton(


            onPressed: function,
            child: Center(
              child: Row(


                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 54 ),
                    child: Image(
                        width: 22,
                        height: 22,
                        image: AssetImage('assets/images/google.png',


                    )),
                  ),
                  SizedBox(
                    width: 20,
                  ),

                  Text(
                    text,
                    style:  Styles.style14black
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );