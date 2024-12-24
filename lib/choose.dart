import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/symptoms.dart';
import 'package:guidelines/treatment.dart';

class Choose extends StatelessWidget {
  const Choose(this.colour, this.disease, this.patient, {super.key});
  final Color colour;
  final String disease;
  final String patient;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(disease),
        backgroundColor: colour,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'Does the patient show any of these clinical features?',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(
                height: 22,
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Symptoms('Respiratory', patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'Respiratory : ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      'Cough, Dyspnea',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Treatment(
                            colour,
                            disease,
                            'Refer to the higher treatment centre (secondary or tertiary)',
                            patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'CNS : ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      'Headache, Seizures, Stiff Neck',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Symptoms('Urinary', patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'Urinary : ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      'Dysuria, Hematuria',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Symptoms('GI Diseases', patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'GI : ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      'Abdominal Pain, Diarrhea, Vomiting',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Symptoms('Skin & Soft Tissues', patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'Skin & Soft Tissue : ',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      'Abscess, Furuncles, Cellulitis',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Symptoms('Fever', patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'Fever',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      '',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Treatment(
                            colour,
                            disease,
                            'Acute Undifferentiated Fever\n\nA. Day 1 or 2: Defer investigation and anti-microbials\n\nB. Day 3 or 4: Total leukocyte count with differential, Malaria parasite slide and rapid diagnostic kits, may test for Dengue if suspicion high\n\nC. > 5 days: As per (B) plus paired blood cultures. May test for Dengue, Chikungunya, Scrub typhus, Leptospirosis if suspicion high\n\nD. > 7 days: As per (C) plus X-ray chest and USG abdomen',
                            patient);
                      },
                    ),
                  );
                },
                style: OutlinedButton.styleFrom(
                    fixedSize: const Size(double.infinity, 65)),
                child: const Row(
                  children: [
                    Text(
                      'None Of These',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
