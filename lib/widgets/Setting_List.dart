import 'package:flutter/material.dart';
import '../utils/styles.dart';

Widget SettingList ({
required IconData icon ,
required Function()? function,
required String iconName
})=>Row(
children: [
Icon(icon,
color: Colors.white,),
SizedBox(width: 10,),
TextButton(onPressed: function,
  child: Text(iconName,
style: Styles.style16white,),),
  SizedBox(
    height: 50,
  ),
],
);