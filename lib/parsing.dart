import 'package:flutter/material.dart';
import 'package:latihan_flutter/contoh_stateful.dart';
import 'package:latihan_flutter/contoh_stateless.dart';
import 'package:latihan_flutter/mahasiswa_form.dart';
import './widget/card_widget.dart';
import './mobile_prog.dart';
import './parsing_data.dart';
import './pengenalan_fluuter.dart';
import './profile_uni.dart';
import './contoh_stateless.dart';
import './contoh_stateful.dart';
import './mahasiswa_form.dart';
import './tugas_form.dart';

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
            CardWidget(
              judul: "Universitas Bina Sarana Informatika",
              icon: Icons.account_balance,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfileUni()));
              },
            ),
            CardWidget(
              judul: "Pengenalan Flutter",
              icon: Icons.add_home_work,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KenalFlutter()));
              },
            ),
            CardWidget(
              judul: "Parsing Data",
              icon: Icons.add_location,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ParsingData()));
              },
            ),
            CardWidget(
              judul: "Mobile Programming",
              icon: Icons.android,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MobileProg()));
              },
            ),
            CardWidget(
              judul: "Contoh Stateless",
              icon: Icons.settings,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContohStateless()));
              },
            ),
            CardWidget(
              judul: "Contoh Stateful",
              icon: Icons.data_object,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ContohStateful()));
              },
            ),
            CardWidget(
              judul: "Form Mahasiswa",
              icon: Icons.person_2,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MahasiswaForm()));
              },
            ),
            CardWidget(
              judul: "Tugas - Form Mata Kuliah",
              icon: Icons.folder,
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TugasForm()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
