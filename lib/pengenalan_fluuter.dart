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
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Pengenalan Flutter"),
      ),
    );
  }
}