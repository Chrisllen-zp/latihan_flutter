import 'package:flutter/material.dart';

class ProfileUni extends StatelessWidget {
  const ProfileUni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Universitas BSI", style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text("Selamat Datang di Halaman Profile Universitas BSI"),
      ),
    );
  }
}