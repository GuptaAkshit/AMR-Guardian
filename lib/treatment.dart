import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Treatment extends StatefulWidget {
  const Treatment(this.colour, this.disease, this.diagnose, this.patient,
      {super.key});
  final Color colour;
  final String disease;
  final String diagnose;
  final String patient;

  @override
  State<Treatment> createState() {
    return _TreatmentState(colour, disease, diagnose, patient);
  }
}

class _TreatmentState extends State<Treatment> {
  _TreatmentState(this.colour, this.disease, this.diagnose, this.patient);
  final Color colour;
  final String disease;
  final String diagnose;
  final String patient;
  String selectedValue = 'Typhoid Fever';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          disease,
          style: GoogleFonts.aBeeZee(),
        ),
        backgroundColor: colour,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 50,
              width: double.infinity,
              color: const Color.fromARGB(255, 223, 223, 223),
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: const Text(
                'Treatment',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 380,
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color.fromARGB(255, 223, 223, 233),
              ),
              child: Text(
                diagnose,
                style: GoogleFonts.aBeeZee(
                    fontSize: 17, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
