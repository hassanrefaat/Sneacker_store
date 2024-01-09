import 'package:flutter/material.dart';

import '../widgets/best_seller_list_view.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFF6F6F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF6F6F8),
          title: Center(child: Text('Favorites')),

          actions: [Center(
            child: CircleAvatar(
              backgroundColor: Colors.white,
                child: Icon(Icons.favorite_border_outlined)),
          )],
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: BestSellerListView(),
        ));
  }
}
