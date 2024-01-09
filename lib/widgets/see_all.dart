import 'package:flutter/material.dart';

import '../utils/styles.dart';

class SeeAll extends StatelessWidget {
  const SeeAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('New Arrivals',
          style: Styles.style16,
        ),
        Spacer(),
        TextButton(onPressed: (){},
          child: Text(
            'See all',
            style: Styles.style12blue,
          ),)
      ],
    );
  }
}
