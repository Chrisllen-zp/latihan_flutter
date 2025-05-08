import 'package:flutter/material.dart';

class ParsingData extends StatelessWidget {
  const ParsingData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Parsing Data", style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 202, 34, 34),
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Parsing Data"),
      ),
    );
  }
}