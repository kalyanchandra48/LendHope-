import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 26),
      height: 47,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Color(0xffF2F2F2)),
      child: TextFormField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: 19.33),
          ),
          border: InputBorder.none,
          hintText: 'Search Reports',
          contentPadding:
              EdgeInsets.symmetric(vertical:16.0, horizontal: 20.0),
        ),
      ),
    );
  }
}
