import 'package:flutter/material.dart';

import '../utils/styles.dart';

class HomeBottom extends StatelessWidget {
  const HomeBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.infinity,
      decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
          )),
      child:
      Stack(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Summer Sale',
                      style: Styles.style12,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text('15% OFF',
                      style: Styles.style36,
                    ),


                  ],


                ),

              ),
              SizedBox(width: 30,),
              Image.asset('assets/images/new.png',
                width: 30,
              ),
              Image.asset('assets/images/nike.png',
                width: 120,
                height: 120,
              )
            ],
          ),
        ],
      ),
    );
  }
}
