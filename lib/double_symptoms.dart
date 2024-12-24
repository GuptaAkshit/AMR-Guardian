import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';

class DoubleSymptoms extends StatelessWidget {
  DoubleSymptoms(this.title, this.symptom, this.patient, {super.key});
  final String title;
  final String symptom;
  final String patient;

  @override
  Widget build(BuildContext context) {
    Color colour = Colors.black;
    if (patient == 'Adult') {
      colour = const Color.fromARGB(255, 18, 31, 65);
    } else {
      colour = const Color.fromARGB(255, 68, 4, 94);
    }
    if (symptom ==
        'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.') {
      title == 'Organisms';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.aBeeZee(
              fontSize: 21,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: colour,
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: Scrollbar(
        thickness: 3,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              if (symptom == 'Respiratory-Sore throat + Fever') ...[
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(symptom, 'Acute pharyngitis',
                                  'Viral', patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Viral',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  '',
                                  'Group A ß-hemolytic Streptococci (GABHS), Group C, G Streptococcus',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Group A ß-hemolytic Streptococci (GABHS), Group C, G Streptococcus',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              if (symptom ==
                  'Urinary-Dysuria, Urinary urgency, Suprapubic pain') ...[
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Acute uncomplicated Cystitis',
                                  'E.coli, Staphylococcus saprophyticus (in sexually active young women), Klebsiella pneumoniae',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Acute uncomplicated Cystitis',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Uncomplicated UTI (age> 2 months with lower UTI, without any urinary tract obstruction)',
                                  '',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Uncomplicated UTI (age> 2 months with lower UTI, without any urinary tract obstruction)',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              if (symptom ==
                  'Obstetrics & Gyne-Dysuria, Urinary urgency, Suprapubic pain') ...[
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Asymptomatic Bacteriuria (>1,00,000 cfu/ ml)',
                                  '',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Asymptomatic Bacteriuria (>1,00,000 cfu/ ml)',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Group B streptococcal Disease, Prophylaxis and Treatment',
                                  'Group B Streptococci',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Group B streptococcal Disease, Prophylaxis and Treatment',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              if (symptom ==
                  'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.') ...[
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Prosthetic joint infection',
                                  'Coagulase negative staphylococci, Staphylococcus aureus',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Coagulase negative staphylococci, Staphylococcus aureus',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Prosthetic joint infection',
                                  'Streptococci, Gram-negative bacilli',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Streptococci, Gram-negative bacilli',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom,
                                  'Prosthetic joint infection',
                                  'Enterococcus, Anaerobes',
                                  patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Enterococcus, Anaerobes',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              if (symptom ==
                  'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') ...[
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom, 'Thermal Burns', '', patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Thermal Burns',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom, 'Electric Burns', '', patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Electric Burns',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Diagnose(
                                  symptom, 'Chemical Burns', '', patient);
                            },
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 8, right: 8, top: 5, bottom: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Chemical Burns',
                              style: GoogleFonts.aBeeZee(
                                  fontSize: 20, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}
