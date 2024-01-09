import 'package:flutter/material.dart';
import '../utils/styles.dart';
import '../widgets/best_seller_list_view.dart';
import '../widgets/home_bottom.dart';
import '../widgets/project_app_bar.dart';
import '../widgets/search.dart';
import '../widgets/see_all.dart';
import '../widgets/shoes_list_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70), child: HomeAppBar(context)),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
              top: 60,
              start: 20,
              end: 20,
                bottom: 60
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchForm(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Select Category',
                  style: Styles.style16,
                ),
                SizedBox(
                  height: 20,
                ),
                ShoesListView(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Popular Shoes',
                  style: Styles.style16,
                ),
                SizedBox(
                  height: 20,
                ),
                BestSellerListView(),
                SizedBox(
                  height: 20,
                ),
                SeeAll(),
                SizedBox(
                  height: 20,
                ),
                HomeBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
