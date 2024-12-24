import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/home_page.dart';
import 'package:guidelines/myhome.dart';

class Disclaimer2 extends StatelessWidget {
  const Disclaimer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Introduction',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 21,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 10),
                  child: Container(
                    child: Text(
                      'Definition: Rational use of medicines requires that "patients receive medications appropriate to their clinical needs, in doses that meet their own individual requirements, for an adequate period of time, and at the lowest cost to them and their community.',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 25.0, horizontal: 10),
                  child: Container(
                    child: Text(
                      'Steps to rationalize the use of antibiotics:\n\nStep 1: Making a clinical diagnosis to predict causative pathogens fitting in to a clinical syndrome.\nStep 2: Limiting empiric antibiotic therapy to genuine seriously ill patients.\nStep 3: Know your bugs.\nStep 4: Choose the appropriate antibiotic - Based on the spectrum of the antibiotic considering possible resistant patterns - Use the correct dose, route, and duration.\nStep 5: De-escalation/modification.\nStep 6: Stop antibiotics in the selected clinical situations such as viral infections or asymptomatic bacteriuria or low-grade fever.\nStep 7: Optimum duration of therapy: Practice guidelines and recommendations.\nStep 8: Optimize pharmacokinetics-pharmacodynamics parameters according to age and co-morbidities like renal failure, sepsis, and burns.',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, bottom: 10, top: 10),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    height: 60,
                    child: const Center(
                      child: Text(
                        'Okay, Got it',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
