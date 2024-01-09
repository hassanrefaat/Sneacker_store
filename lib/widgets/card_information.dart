import 'package:flutter/material.dart';

import '../utils/styles.dart';

class CardInformation extends StatelessWidget {
  const CardInformation({
    super.key, required this.icon, required this.info, required this.infoName,
  });
  final IconData icon ;
  final String info;
  final String infoName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Row(
        children: [

          Icon(icon),
          SizedBox(width:10 ,),
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(info,
                style: Styles.style14black,
              ),
              SizedBox(
                height: 20,
              ),
              Text(infoName,
                style: Styles.style12,)
            ],
          ),
          Spacer(),
          IconButton(onPressed: (){}, icon: Icon(Icons.edit_outlined))
        ],
      ),
    );
  }
}
