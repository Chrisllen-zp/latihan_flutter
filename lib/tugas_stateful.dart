import 'package:flutter/material.dart';

class NilaiAPlease extends StatefulWidget {
  const NilaiAPlease({super.key});

  @override
  State<NilaiAPlease> createState() => _NilaiAPleaseState();
}

class _NilaiAPleaseState extends State<NilaiAPlease> {
  String pertanyaan = "Matkul ini boleh dapat A ya Pak? 🥺";
  double sizeYes = 16;
  double sizeNo = 16;
  int rejectionCount = 0;
  bool isFinished = false;
  bool showFinalYesOnly = false;

  void pilihBoleh() {
    setState(() {
      pertanyaan = "Yay! Terima kasih banyak pak!";
      isFinished = true;
    });
  }

  void pilihLainKali() {
    setState(() {
      rejectionCount++;
      sizeYes += 4;
      sizeNo = (sizeNo - 2).clamp(10, 16);
      pertanyaan = "Kok gitu pak? Boleh ya?? 🥺🥺";

      if (rejectionCount >= 5) {
        showFinalYesOnly = true;
        pertanyaan = "Boleh dong pak, hehe 🥺🥺🥺🥺";
      }
    });
  }

  void reset() {
    setState(() {
      rejectionCount = 0;
      sizeYes = 16;
      sizeNo = 16;
      isFinished = false;
      showFinalYesOnly = false;
      pertanyaan = "Matkul ini boleh dapat A ya Pak? 🥺";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tugas Stateful", style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 21, 62, 197),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                pertanyaan,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(height: 30),
              if (isFinished)
                ElevatedButton(
                  onPressed: reset,
                  child: const Text("Reset"),
                )
              else if (showFinalYesOnly)
                ElevatedButton(
                  onPressed: pilihBoleh,
                  child: Text(
                    "Ya udah, boleh",
                    style: TextStyle(fontSize: sizeYes + 8),
                  ),
                )
              else
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: pilihBoleh,
                      child: Text("Boleh", style: TextStyle(fontSize: sizeYes)),
                    ),
                    ElevatedButton(
                      onPressed: pilihLainKali,
                      child: Text("Lain kali saja.",
                          style: TextStyle(fontSize: sizeNo)),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
