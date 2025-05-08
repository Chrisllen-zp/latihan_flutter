import 'dart:ffi';

import 'package:flutter/material.dart';

class TugasFormdetail extends StatelessWidget {
  final String mk;
  final int sks;
  final String smt;

  const TugasFormdetail(
      {super.key, required this.mk, required this.sks, required this.smt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Mata Kuliah")),
      body: Center(
        child: Column(
          children: [
            Text("Mata Kuliah : " + mk),
            Text("SKS : ${sks}"),
            Text("Semester : " + smt)
          ],
        ),
      ),
    );
  }
}
