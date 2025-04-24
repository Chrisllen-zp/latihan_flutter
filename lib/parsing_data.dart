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
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Parsing Data"),
      ),
    );
  }
}