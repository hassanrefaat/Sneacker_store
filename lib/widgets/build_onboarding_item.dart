import 'package:flutter/material.dart';

import '../utils/styles.dart';

class BoardingModel {
  late final String image;
   final String? title;
   final String? body;
   final String? text;



  BoardingModel(
       { this.text,
         this.body,
         this.title,
    required this.image,

  });
}
Widget buildBoardingItem(BoardingModel model)=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Padding(
      padding: EdgeInsetsDirectional.only(
        top: 40
      ),
      child: Center(
        child: Text(
          '${model.title}',
          textAlign: TextAlign.center,
          style: Styles.style30
        ),
      ),
    ),
    // SizedBox(
    //   height: 150,
    // ),

    Center(
      child: Container(
        color: Color(0xFF1483C2),
        child: Image(
          image:AssetImage('${model.image}'),

        ),
      ),
    ),
    SizedBox(height: 30.0,),
    Center(
      child: Text(

        '${model.body}',
        textAlign: TextAlign.center,
        maxLines: 2,
        style:  Styles.style30
      ),
    ),
    SizedBox(
      height:15,),
    Center(
      child: Text(
        '${model.text}',
        textAlign: TextAlign.center,
        maxLines: 3,
        style: Styles.style14
      ),
    ),
    SizedBox(
      height: 30.0,),

  ],
);
