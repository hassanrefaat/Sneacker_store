import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../features/fav/fav_cubit.dart';

class BestSeller extends StatelessWidget {
  final Item item = Item(id: '1', name: 'Sample Item'); // Define the Item here

  BestSeller(
      {super.key,
      required this.image,
      required this.brandText,
      required this.brandCoast, });

  final String image;
  final String brandText;
  final String brandCoast;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavCubit, FavState>(

      builder: (context,state)=>
       Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child:  IconButton(

                    icon: state.favorites.contains(item) ? Icon(Icons.favorite, color: Colors.red) : Icon(Icons.favorite_border),
                    onPressed: () {
                          context.read<FavCubit>().toggleFavorite(item);
                    },
                  ),
                  ),
              Image.asset(
               image,
                width: 116,
                height: 54,
              ),
              SizedBox(
                height: 10,
              ),
              Text('Best Seller'),
              SizedBox(
                height: 5,
              ),
              Text(brandText),
              Row(
                children: [
                  Text(brandCoast),
                  SizedBox(
                    width: 40,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                    ),
                  )
                ],
              ),

            ],
          ),
          // Spacer(),
          // Container(
          //   width: 157,
          //   height: 201,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Align(
          //           alignment: Alignment.topLeft,
          //           child: Icon(CupertinoIcons.heart)),
          //       Image.asset(
          //         'assets/images/best1.png',
          //         width: 116,
          //         height: 54,
          //       ),
          //       SizedBox(
          //         height: 10,
          //       ),
          //       Text('Best Seller'),
          //       SizedBox(
          //         height: 5,
          //       ),
          //       Text('Nike Jordan'),
          //       Row(
          //         children: [
          //           Text('\$302.00'),
          //           SizedBox(
          //             width: 40,
          //           ),
          //           CircleAvatar(
          //             child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          //           )
          //         ],
          //       )
          //     ],
          //   ),
          // )
        ],
             ), listener: (BuildContext context, FavState state) {  },
    );
  }
}
