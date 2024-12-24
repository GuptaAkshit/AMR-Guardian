import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/check_disease.dart';
import 'package:guidelines/check_disease2.dart';
import 'package:guidelines/treatment.dart';

class Questions2 extends StatelessWidget {
  const Questions2(this.ans, this.patient, {super.key});
  final List ans;
  final String patient;

  @override
  Widget build(BuildContext context) {
    late Color color;
    if (patient == 'Adult') {
      color = const Color.fromARGB(255, 18, 31, 65);
    } else {
      color = const Color.fromARGB(255, 68, 4, 94);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        title: Text('Fever of less than 2 days?',
            style: GoogleFonts.aBeeZee(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        child: Column(
          children: [
            //   const SizedBox(
            //     height: 26,
            //   ),
            //   Padding(
            //     padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            //     child: Row(
            //       children: [
            //         Text(
            //           'Fever of less than 2 days?',
            //           style: GoogleFonts.aBeeZee(
            //             fontSize: 17,
            //             fontWeight: FontWeight.bold,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // const SizedBox(
            //   height: 15,
            // ),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const Treatment(Color.fromARGB(255, 0, 0, 0),
                          'Treatment', 'No antibiotics required', 'Adult');
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
                print(ans);
                if (ans == [0]) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Treatment(
                            Color.fromARGB(255, 0, 0, 0),
                            'Treatment',
                            'Day 3 or 4: Complete blood count, Widal/Typhidot (1:160), Blood culture, urine routine and culture, Malaria parasite slide and rapid diagnostic kits, may test for Dengue if suspicion high (community outbreak)\n\n> 5 days: As per (B) plus paired blood cultures. May test for Dengue, Chikungunya, Scrub typhus, Leptospirosis if suspicion high\n\n> 7 days: As per (C) plus X-ray chest and USG abdomen',
                            'Adult');
                      },
                    ),
                  );
                } else {
                  if (patient == 'Adult') {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CheckDisease(ans);
                        },
                      ),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CheckDisease2(ans);
                        },
                      ),
                    );
                  }
                }
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
    );
  }
}
