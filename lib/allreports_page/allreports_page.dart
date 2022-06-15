import 'package:flutter/material.dart';
import 'allreports_components_page/search_field.dart';
import 'allreports_components_page/common_reports.dart';
import 'package:lendhope/createReport/createReport_Screen.dart';

class AllReportsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
	leadingWidth:10,
	titleSpacing:0.0,
        title: 
           Text('All Reports',
              textAlign: TextAlign.left,
              style: TextStyle(color: Color(0xff39B3E6))),
       
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Image.asset('assets/addicon.png'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CreateReport()),
                );
              }),
        ],
      ),
      body: Column(children: [
        SearchField(),
        CommonReports(),
      ]),
    ); //scaffold
  }
}
