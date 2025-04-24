import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final IconData icon;
  final String judul;
  final VoidCallback? onTap;

  const CardWidget(
      {super.key, required this.icon, required this.judul, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: ListTile(
          leading: Icon(icon),
          title: Text(judul),
        ),
      ),
    );
  }
}
