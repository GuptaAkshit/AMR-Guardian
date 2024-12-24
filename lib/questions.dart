import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/choose.dart';
import 'package:guidelines/treatment.dart';

class Questions extends StatelessWidget {
  const Questions(this.disease, this.patient, this.ques, {super.key});
  final String disease;
  final String patient;
  final String ques;

  @override
  Widget build(BuildContext context) {
    late Color colour;
    if (patient == 'Adult') {
      colour = const Color.fromARGB(255, 18, 31, 65);
    } else if (patient == 'Children') {
      colour = const Color.fromARGB(255, 68, 4, 94);
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(disease),
        backgroundColor: colour,
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 26,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: Text(
                  ques,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        if (disease == 'Fever' && patient == 'Adults') {
                          return Treatment(colour, disease,
                              'Hospitalization (Sepsis algorithm)', 'Adults');
                        } else {
                          return Treatment(colour, disease,
                              'Hospitalization (Sepsis algorithm)', 'Children');
                        }
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  fixedSize: const Size(500, 60),
                ),
                icon: const Icon(Icons.check,
                    size: 30, color: Color.fromARGB(255, 0, 155, 64)),
                label: const Text(
                  'Yes',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(
                height: 1,
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Choose(colour, disease, patient);
                      },
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  fixedSize: const Size(500, 60),
                ),
                icon: const Icon(
                  Icons.cancel_outlined,
                  size: 30,
                  color: Color.fromARGB(255, 255, 0, 0),
                  weight: 10,
                ),
                label: const Text(
                  'No',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
