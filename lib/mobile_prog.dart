import 'package:flutter/material.dart';

class MobileProg extends StatelessWidget {
  const MobileProg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Mobile Programming",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 34, 158, 15),
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Mobile Programmig"),
      ),
    );
  }
}
