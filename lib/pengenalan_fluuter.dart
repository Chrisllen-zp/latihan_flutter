import 'package:flutter/material.dart';

class KenalFlutter extends StatelessWidget {
  const KenalFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pengenalan Flutter", style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 201, 140, 35),
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Pengenalan Flutter"),
      ),
    );
  }
}