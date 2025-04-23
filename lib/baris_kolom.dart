import 'package:flutter/material.dart';

class Rowcolumn extends StatelessWidget {
  const Rowcolumn({super.key});

  @override
  Widget build(BuildContext context) {
    //membuat data 3 * 3
    List<List<String>> gridData = List.generate(
        3,
        (baris) => List.generate(
              3,
              (kolom) => 'Baris ${baris + 1}, Kolom ${kolom + 1}',
            ));

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Baris dan Kolom",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: gridData.map((baris) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: baris.map((teks) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(teks),
                  );
                }).toList(),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
