import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/Data/disease_list2.dart';
import 'package:guidelines/check_disease.dart';
import 'package:guidelines/check_disease2.dart';
import 'package:guidelines/diagnose.dart';
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
        title: Text('Duration of Fever',
            style: GoogleFonts.aBeeZee(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: Container(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                if (listEquals(ans, [0, 2])) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Diagnose(
                            disease_list2[112].symptom,
                            disease_list2[112].disease,
                            disease_list2[112].organism,
                            'Adult');
                      },
                    ),
                  );
                } else if (listEquals(ans, [0, 23])) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Diagnose(
                            disease_list2[86].symptom,
                            disease_list2[86].disease,
                            disease_list2[86].organism,
                            'Adult');
                      },
                    ),
                  );
                } else if (listEquals(ans, [0, 6, 21])) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Diagnose(
                            disease_list2[27].symptom,
                            disease_list2[27].disease,
                            disease_list2[27].organism,
                            'Adult');
                      },
                    ),
                  );
                } else if (listEquals(ans, [0, 21])) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Diagnose(
                            disease_list2[26].symptom,
                            disease_list2[26].disease,
                            disease_list2[26].organism,
                            'Adult');
                      },
                    ),
                  );
                } else if (listEquals(ans, [0, 6])) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Diagnose(
                            disease_list2[110].symptom,
                            disease_list2[110].disease,
                            disease_list2[110].organism,
                            'Adult');
                      },
                    ),
                  );
                } else if (listEquals(ans, [0, 32])) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return Diagnose(
                            disease_list2[49].symptom,
                            disease_list2[49].disease,
                            disease_list2[49].organism,
                            'Adult');
                      },
                    ),
                  );
                } else {
                  print(ans);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const Treatment(Color.fromARGB(255, 0, 0, 0),
                            'Treatment', 'No antibiotics required', 'Adult');
                      },
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                fixedSize: const Size(500, 60),
              ),
              child: const Text(
                '1-2 days',
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
            ElevatedButton(
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
              child: const Text(
                'More than 2 days',
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
