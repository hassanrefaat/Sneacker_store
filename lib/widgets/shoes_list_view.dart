import 'package:flutter/material.dart';
import 'package:sneaker_store/widgets/shoes_list.dart';

class ShoesListView extends StatefulWidget {
  const ShoesListView({super.key});

  @override
  State<ShoesListView> createState() => _ShoesListViewState();
}

class _ShoesListViewState extends State<ShoesListView> {

  final List<String>shoesList =
  [
    'All Shoes',
    'Outdoor',
    'Tennis',
  ];
  int activeIndex = 0;
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: ListView.builder(
            itemCount: shoesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    activeIndex = index;
                    setState(() {});
                  },
                  child: ShoesList(
                      isActive: activeIndex == index,
                      text:shoesList[index] ),
                ),
              );
            }),
      ),
    );
  }
}
