import 'package:flutter/material.dart';
import './tugas_formdetail.dart';
import 'package:flutter/services.dart';

class TugasForm extends StatefulWidget {
  const TugasForm({super.key});

  @override
  State<TugasForm> createState() => _TugasFormState();
}

class _TugasFormState extends State<TugasForm> {
  final _formKey = GlobalKey<FormState>();
  final _mkCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _smtCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Mata Kuliah", style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 210, 199, 38),),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            mkField(),
            SizedBox(height: 10),
            sksField(),
            SizedBox(height: 10),
            smtField(),
            SizedBox(height: 10),
            tombolSimpan()
          ],
        ),
      ),
    );
  }

  Widget mkField() {
    return TextField(
      decoration: InputDecoration(labelText: "Mata Kuliah"),
      controller: _mkCtrl,
    );
  }

  Widget sksField() {
    return TextField(
      decoration: InputDecoration(labelText: "SKS"),
      controller: _sksCtrl,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }

  Widget smtField() {
    return TextField(
      decoration: InputDecoration(labelText: "Semester"),
      controller: _smtCtrl,
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
            final sks = int.tryParse(_sksCtrl.text);

            if (sks == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('SKS harus berupa angka')),
              );
              return;
            }

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TugasFormdetail(
                      mk: _mkCtrl.text, sks: sks, smt: _smtCtrl.text)));
        },
        child: Text("Simpan"));
  }
}
