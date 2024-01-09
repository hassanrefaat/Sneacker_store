import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TotalCoast extends StatelessWidget {
  const TotalCoast({
    super.key, required this.text, required this.coast,
  });
  final String text;
  final String coast;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(text,
          style: Styles.style16gray,
        ),
        Spacer(),
        Text(coast,
          style: Styles.style16,),
        SizedBox(height: 40,),
      ],
    );
  }
}

class FinalTotalCoast extends StatelessWidget {
  const FinalTotalCoast({
    super.key, required this.text, required this.coast,
  });
  final String text;
  final String coast;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(text,
          style: Styles.style16,
        ),
        Spacer(),
        Text(coast,
          style: Styles.style16blue,),
        SizedBox(height: 40,),
      ],
    );
  }
}