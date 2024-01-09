import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/lay_out/cubit.dart';
import '../features/lay_out/lay_out_states.dart';
import '../utils/styles.dart';
import '../widgets/items_counter.dart';
import '../widgets/my_cart_brand.dart';
import '../widgets/my_cart_delete.dart';
import '../widgets/my_cart_total_price.dart';


class MyCart extends StatelessWidget {
  const MyCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar: AppBar(
        backgroundColor: Color(0xFFF6F6F8),
        title: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Text(
            'My Cart',
          ),
        ),
      ),
      body: BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (BuildContext context, CounterStates state) {},
          builder: (BuildContext context, CounterStates state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                child: Text(
                  '3 Item',
                  style: Styles.style16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ItemsCounter(),
                    SizedBox(
                      width: 15,
                    ),
                    MyCartBrand(
                        image: 'assets/images/notification1.png',
                        brandName: 'Nike Club Max',
                        brandCoast: '\$584.95'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: MyCartBrandDelete(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 355,
                  child: MyCartBrand(
                      image: 'assets/images/notification3.png',
                      brandName: 'Nike Air Max 270 Essential',
                      brandCoast: '\$74.95'),
                ),
              ),
              SizedBox(
                height: 74,
              ),
              MYCartTotalPrice(),
            ],
          ),
        ),
      ),
    );
  }
}

