import 'package:flutter/material.dart';
import './widget/card_widget.dart';
import './mobile_prog.dart';
import './parsing_data.dart';
import './pengenalan_fluuter.dart';
import './profile_uni.dart';

class Parsing extends StatelessWidget {
  const Parsing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Parsing Data",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: GestureDetector(
        child: Column(
          children: [
            CardWidget(judul: "Universitas Bina Sarana Informatika", icon: Icons.account_balance, 
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfileUni()));
              },
            ),
            CardWidget(judul: "Pengenalan Flutter", icon: Icons.add_home_work,
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>KenalFlutter()));
              },
            ),
            CardWidget(judul: "Parsing Data", icon: Icons.add_location,
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ParsingData()));
              },
            ),
            CardWidget(judul: "Mobile Programming", icon: Icons.android, 
            onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MobileProg()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
