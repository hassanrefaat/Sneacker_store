import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchForm extends StatelessWidget {
   SearchForm({super.key});
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 350,
          child: SearchBar(
            controller: searchController,
            hintText: 'Looking for shoes',
            leading: Icon(
              Icons.search_outlined,

            ),
            onTap: (){},
            //onChanged:(){},


          ),
        ),

      ],
    );
  }
}
