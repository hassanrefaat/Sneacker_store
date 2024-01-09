import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/lay_out/cubit.dart';
import '../features/lay_out/lay_out_states.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => YourLegCubit(),
      child: BlocConsumer<YourLegCubit, YourLegStates>(
        listener: (BuildContext context, YourLegStates state) {},
        builder: (BuildContext context, YourLegStates state) {
          var appCubit = YourLegCubit.get(context);
          return Scaffold(
              body: appCubit.BottomScreens[appCubit.currentIndex],
              bottomNavigationBar: CurvedNavigationBar(
                index: 0,
                height: 50,
                items: const <Widget>[
                  Icon(Icons.home_outlined,
                      color: Color(0xFF0D6EFD), size: 30),
                  Icon(Icons.favorite_outline_outlined,
                      color: Color(0xFF0D6EFD), size: 30),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.only(
                  //     bottom: 30
                  //   ),
                  //   child: Container(
                  //     width: 56,
                  //     height: 56,
                  //
                  //     child: CircleAvatar(
                  //       backgroundColor: Colors.blue,
                  //       child: Icon(Icons.shopping_bag_outlined,
                  //       color: Colors.white,
                  //       size: 30,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Icon(Icons.notifications_outlined,
                      color: Color(0xFF0D6EFD), size: 30),
                  Icon(Icons.person_outline,
                      color: Color(0xFF0D6EFD), size: 30),
                ],
                color: Colors.white,
                backgroundColor: Colors.white,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 300),
                onTap: (index) {
                  setState(() {
                    appCubit.currentIndex = index;
                  });
                },
              ));
        },
      ),
    );
  }
}
