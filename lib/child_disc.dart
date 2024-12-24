import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/home_page.dart';
import 'package:guidelines/myhome.dart';

class ChildDisc extends StatelessWidget {
  const ChildDisc({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'No antibiotics',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 21,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, left: 10, right: 10, bottom: 5),
                  child: Container(
                    child: Text(
                      'I. Respiratory tract syndromes',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15.0, left: 10, right: 10),
                  child: Container(
                    child: Text(
                      '- Viral pharyngitis\n- Viral rhinosinusitis\n- Viral bronchitis\n- Non-infectious cardio\n-pulmonary syndromes misdiagnosed as pneumonia',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: Container(
                    child: Text(
                      'II. Skin and Soft Tissue Infections',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15.0, left: 10, right: 10),
                  child: Container(
                    child: Text(
                      '- Subcutaneous abscesses\n- Lower extremity stasis dermatitis',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: Container(
                    child: Text(
                      'III. Asymptomatic bacteriuria and pyuria including in catheterized patients.\n\nIV. Microbial colonization and culture contamination.\n\nV. Low grade fever.',
                      style: GoogleFonts.aBeeZee(
                          fontSize: 17, fontWeight: FontWeight.bold),
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
