import 'package:flutter/material.dart';
import 'package:lendhope/allreports_page/allreports_page.dart';
class SettingsWidget extends StatelessWidget {
  SettingsWidget({required this.text, required this.image});
  late String text;
  late String image;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
		    onTap:() { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AllReportsPage()),
  );  },
		    
		    child: Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(5),
      height: 70,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: ListTile(
          leading: Image.asset(image,height:38,width:39),
          title: Text(text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          trailing: CircleAvatar(
            backgroundColor: Color(0x0D39B3E6),
            radius: 15,
            child: Center(
              child: IconButton(
			      padding:EdgeInsets.all(0),
                icon: Icon(Icons.chevron_right, size: 20),
                color: Color(0xFF39B3E6),
       
		onPressed:(){},
              ),
            ),
          ),
        ),
      ),
      ), );
  }
}
