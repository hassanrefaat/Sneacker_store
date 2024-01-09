import 'package:flutter/material.dart';

import '../utils/styles.dart';
import '../views/my_cart.dart';
import 'nav.dart';

Widget HomeAppBar(context)=> AppBar(
  backgroundColor:  Color(0xFFF6F6F8),
      leading:
      Image.asset('assets/images/actions.png',
        width: 20,
        height: 18,
      ),


      title: Center(
        child: Text(
          'Explore',
          style: Styles.style32,
          textAlign: TextAlign.center,
        ),
      ),
      actions: [
        IconButton( onPressed: () {
          navigateTo(context, MyCart()); },
            icon:Icon(Icons.shopping_bag_outlined,
              size: 35,) ,)
      ],



);


