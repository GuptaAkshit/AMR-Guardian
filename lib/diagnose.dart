import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/Data/disease_list.dart';
import 'package:guidelines/Data/disease_list2.dart';
//import 'package:guidelines/symptoms.dart';

class Diagnose extends StatefulWidget {
  const Diagnose(this.symptom, this.disease, this.organism, this.patient,
      {super.key});
  final String symptom;
  final String disease;
  final String organism;
  final String patient;

  @override
  State<Diagnose> createState() {
    return _DiagnoseState(symptom, disease, organism, patient);
  }
}

class _DiagnoseState extends State<Diagnose> {
  _DiagnoseState(this.symptom, this.disease, this.organism, this.patient);
  final String symptom;
  final String disease;
  final String organism;
  final String patient;

  String selectedValue = 'Disease';
  Color color1 = const Color.fromARGB(255, 134, 134, 134);
  Color color2 = const Color.fromARGB(255, 0, 0, 0);
  int index = 0;
  @override
  Widget build(BuildContext context) {
    final String med;
    final String lab;
    final String com;
    final String alt;
    if (patient == 'Adult') {
      if (symptom.isNotEmpty) {
        while (symptom != disease_list2[index].symptom) {
          index++;
        }
      } else {
        while (disease != disease_list2[index].disease) {
          index++;
        }
      }
    }
    if (patient == 'Children') {
      while (symptom != disease_list[index].symptom) {
        index++;
      }
    }

    Color colour = Colors.black;
    if (patient == 'Adult') {
      colour = const Color.fromARGB(255, 18, 31, 65);
      com = disease_list2[index].comment;
      med = disease_list2[index].medicine;
      lab = disease_list2[index].lab;
      alt = disease_list2[index].alternate;
    } else {
      colour = const Color.fromARGB(255, 68, 4, 94);
      com = disease_list[index].pedcom;
      med = disease_list[index].peddose;
      lab = disease_list[index].lab;
      alt = disease_list[index].alternate;
    }

    if (selectedValue == 'Treatment') {
      color1 = const Color.fromARGB(255, 0, 0, 0);
      color2 = const Color.fromARGB(255, 134, 134, 134);
    } else if (selectedValue == 'Disease') {
      color1 = const Color.fromARGB(255, 134, 134, 134);
      color2 = const Color.fromARGB(255, 0, 0, 0);
    }

    if (patient == 'Children') {
      if (symptom == 'Respiratory-Sore throat + Fever' && organism == 'Viral') {
        index = 48;
      }
      if (symptom == 'Urinary-Dysuria, Urinary urgency, Suprapubic pain' &&
          disease ==
              'Uncomplicated UTI (age> 2 months with lower UTI, without any urinary tract obstruction)') {
        index = 49;
      }
      if (symptom ==
              'Obstetrics & Gyne-Dysuria, Urinary urgency, Suprapubic pain' &&
          disease ==
              'Group B streptococcal Disease, Prophylaxis and Treatment') {
        index = 50;
      }
      if (symptom ==
              'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' &&
          organism == 'Streptococci, Gram-negative bacilli') {
        index = 51;
      }
      if (symptom ==
              'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' &&
          organism == 'Enterococcus, Anaerobes') {
        index = 52;
      }
      if (symptom ==
              'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea' &&
          disease == 'Electric Burns') {
        index = 53;
      }
      if (symptom ==
              'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea' &&
          disease == 'Chemical Burns') {
        index = 54;
      }
    }
    if (patient == 'Adult') {
      if (symptom ==
              'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' &&
          organism == 'Streptococci, Gram-negative bacilli') {
        index = 75;
      }
      if (symptom ==
              'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' &&
          organism == 'Enterococcus, Anaerobes') {
        index = 76;
      }
      if (symptom ==
              'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea' &&
          disease == 'Electric Burns') {
        index = 77;
      }
      if (symptom ==
              'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea' &&
          disease == 'Chemical Burns') {
        index = 78;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          disease,
          style: GoogleFonts.aBeeZee(
            fontSize: 23,
          ),
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
              child: Text(
                'Treatment',
                style: GoogleFonts.aBeeZee(
                  fontSize: 19,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 4, top: 8),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedValue = 'Disease';
                      });
                    },
                    child: Text('Disease'),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      foregroundColor: color2,
                      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
                      fixedSize: Size(
                          (MediaQuery.of(context).size.width / 2) - 12, 75),
                      textStyle: GoogleFonts.aBeeZee(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4.0, right: 8, top: 8),
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        selectedValue = 'Treatment';
                      });
                    },
                    child: Text('Treatment'),
                    style: TextButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      foregroundColor: color1,
                      backgroundColor: const Color.fromARGB(255, 223, 223, 223),
                      fixedSize: Size(
                          (MediaQuery.of(context).size.width / 2) - 12, 75),
                      textStyle: GoogleFonts.aBeeZee(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            if (selectedValue == 'Disease') ...[
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (disease.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Disease:',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: colour,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 50),
                        child: Text(
                          disease,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    if (organism.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Organism:',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: colour,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 50),
                        child: Text(
                          organism,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    if (lab.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Lab Test:',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: colour,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 50),
                        child: Text(
                          lab,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]
                  ],
                ),
              ),
            ],
            if (selectedValue == 'Treatment') ...[
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (med.isNotEmpty) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Initial Treatment:',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: colour,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 50),
                        child: Text(
                          med,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    if ((patient == 'Adult' &&
                            disease_list2[index].alternate.isNotEmpty &&
                            disease_list2[index].alternate !=
                                disease_list2[index].medicine) ||
                        (symptom ==
                                'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea' &&
                            disease_list2[index].alternate.isNotEmpty)) ...[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Alternatives:',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: colour,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 50),
                        child: Text(
                          alt,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    if (com.isNotEmpty) ...[
                      if (patient == 'Adult' ||
                          symptom ==
                              'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Referral Criteria:',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: colour,
                            ),
                          ),
                        ),
                      ] else ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Comments:',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: colour,
                            ),
                          ),
                        ),
                      ],
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 8.0, right: 8, top: 4, bottom: 20),
                        child: Text(
                          com,
                          style: GoogleFonts.aBeeZee(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    if (patient == 'Adult') ...[
                      if (disease_list2[index].patiented.isNotEmpty) ...[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Patient Education:',
                            style: GoogleFonts.aBeeZee(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: colour,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 8.0, right: 8, top: 4, bottom: 50),
                          child: Text(
                            disease_list2[index].patiented,
                            style: GoogleFonts.aBeeZee(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ],
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}
