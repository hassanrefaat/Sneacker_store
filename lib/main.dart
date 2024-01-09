import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneaker_store/views/onboarding_screen.dart';

import 'features/fav/fav_cubit.dart';
import 'features/lay_out/cubit.dart';
import 'features/lay_out/lay_out_states.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

          create: (BuildContext context) => YourLegCubit(),),
        BlocProvider(create:(context)=> FavCubit()

        )
      ],

      child: BlocConsumer<YourLegCubit,YourLegStates>(

        listener: (BuildContext context, YourLegStates state) {  },
        builder: (BuildContext context, YourLegStates state)=>
            MaterialApp(
                debugShowCheckedModeBanner: false,
                home: OnBoardingScreen()),
      ),

    );
  }
}
