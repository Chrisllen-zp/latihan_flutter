import 'package:flutter/material.dart';

class MobileProg extends StatelessWidget {
  const MobileProg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mobile Programming", style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Mobile Programmig"),
      ),
    );
  }
}