import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/Data/disease_list.dart';
import 'package:guidelines/Data/disease_list2.dart';
import 'package:guidelines/double_symptoms.dart';

class Symptoms extends StatelessWidget {
  Symptoms(this.title, this.patient, {super.key});
  final String title;
  final String patient;

  @override
  Widget build(BuildContext context) {
    Color colour = Colors.black;
    late int num, addindex;
    List<int> fever = [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      10,
      21,
      23,
      24,
      25,
      26,
      27,
      28,
      36,
      37,
      38,
      39,
      40,
      41,
      49,
      50,
      51,
      52,
      53,
      54,
      61,
      80,
      81,
      83,
      84,
      85,
      86,
      91,
      92,
      95,
      96,
      97,
      98,
      99,
      100,
      101,
      102,
      103,
      104,
      105,
      106,
      107,
      108,
      109,
      110,
      112,
      113,
      114
    ];
    List<int> gi = [8, 9, 10, 11, 12, 13, 14, 85, 109, 106, 107, 5];
    List<int> skin = [15, 16, 17, 18, 19, 20, 4, 94, 116, 52];
    List<int> resp = [21, 22, 23, 24, 25, 53, 54, 112, 103, 104, 55, 81, 108];
    List<int> uri = [26, 27, 28, 29, 30, 36, 95, 96, 97, 98, 99, 100, 101, 102];
    List<int> ear = [49, 50, 51, 52, 53, 54, 55];
    List<int> burn = [56];
    List<int> geni = [
      37,
      38,
      39,
      40,
      41,
      28,
      26,
      27,
      36,
      95,
      96,
      97,
      98,
      99,
      100,
      101,
      102
    ];
    List<int> gyne = [31, 32, 33, 34, 35, 36];
    List<int> bone = [42, 43, 81, 82, 83];
    List<int> eye = [44, 45, 46, 47, 48];
    List<int> dental = [57, 58, 59, 60, 61, 62, 63, 64, 65];
    List<int> endo = [66, 67, 68, 69, 70, 71];
    List<int> neuro = [72, 73];
    List<int> cardio = [74];
    List<int> preg = [117, 118, 119, 120, 121];
    List<int> finalist = [];
    double a = 2.1;
    if (patient == 'Adult') {
      colour = const Color.fromARGB(255, 18, 31, 65);
      if (title == 'GI Diseases') {
        addindex = 8;
        finalist = gi;
        num = finalist.length;
      } else if (title == 'Fever') {
        addindex = 0;
        finalist = fever;
        num = finalist.length;
      } else if (title == 'Skin & Soft Tissues') {
        addindex = 15;
        finalist = skin;
        num = finalist.length;
      } else if (title == 'Respiratory') {
        addindex = 21;
        finalist = resp;
        num = finalist.length;
      } else if (title == 'Urinary') {
        addindex = 26;
        finalist = uri;
        num = finalist.length;
      } else if (title == 'Obstetrics & Gyne') {
        addindex = 31;
        finalist = gyne;
        num = finalist.length;
      } else if (title == 'Genital Tract') {
        addindex = 37;
        finalist = geni;
        num = finalist.length;
      } else if (title == 'Bones & Joints') {
        addindex = 42;
        finalist = bone;
        num = finalist.length;
      } else if (title == 'Eye Infections') {
        addindex = 44;
        finalist = eye;
        num = finalist.length;
      } else if (title == 'Ear Infections') {
        addindex = 49;
        finalist = ear;
        num = finalist.length;
      } else if (title == 'Burns') {
        addindex = 56;
        finalist = burn;
        num = finalist.length;
        a = 1.65;
      } else if (title == 'Dental infections') {
        addindex = 57;
        finalist = dental;
        num = finalist.length;
      } else if (title == 'Endocrinology') {
        addindex = 66;
        finalist = endo;
        num = finalist.length;
      } else if (title == 'Neurological') {
        addindex = 72;
        finalist = neuro;
        num = finalist.length;
        a = 1.38;
      } else if (title == 'Cardiological') {
        addindex = 74;
        finalist = cardio;
        num = finalist.length;
      } else {
        addindex = 74;
        finalist = preg;
        num = finalist.length;
      }
    }
    List<int> fever1 = [
      0,
      1,
      2,
      3,
      4,
      5,
      6,
      7,
      8,
      9,
      11,
      12,
      13,
      14,
      16,
      17,
      18,
      40,
      41,
      45,
      46,
      48,
      49,
      56,
      59,
      60,
      61,
      62
    ];
    List<int> gi1 = [0, 3, 8, 9, 10, 11];
    List<int> skin1 = [4, 5, 12, 13, 43];
    List<int> resp1 = [1, 14, 15, 16, 17, 18, 45, 46, 49, 59, 62];
    List<int> uri1 = [19];
    List<int> ear1 = [40, 41, 42, 43, 44, 45, 46, 61];
    List<int> burn1 = [47];
    if (patient == 'Children') {
      colour = const Color.fromARGB(255, 68, 4, 94);
      if (title == 'GI Diseases') {
        finalist = gi1;
        num = finalist.length;
        addindex = 8;
      } else if (title == 'Fever') {
        finalist = fever1;
        num = finalist.length;
        addindex = 0;
      } else if (title == 'Skin & Soft Tissues') {
        finalist = skin1;
        num = finalist.length;
        addindex = 12;
      } else if (title == 'Respiratory') {
        finalist = resp1;
        num = finalist.length;
        addindex = 14;
      } else if (title == 'Urinary') {
        finalist = uri1;
        num = finalist.length;
        addindex = 19;
      } else if (title == 'Obstetrics & Gyne') {
        num = 2;
        addindex = 23;
      } else if (title == 'Genital Tract') {
        num = 5;
        addindex = 25;
      } else if (title == 'Bones & Joints') {
        num = 2;
        addindex = 30;
      } else if (title == 'Eye Infections') {
        num = 8;
        addindex = 32;
      } else if (title == 'Ear Infections') {
        finalist = ear1;
        num = finalist.length;
        addindex = 40;
      } else {
        finalist = burn1;
        num = finalist.length;
        addindex = 47;
        a = 1.65;
      }
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
              Container(
                height: 52,
                width: double.infinity,
                color: const Color.fromARGB(255, 223, 223, 223),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: const Text(
                  'Symptoms',
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: num,
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (patient == 'Children') {
                          if (disease_list[finalist[index]].symptom ==
                                  'Respiratory-Sore throat + Fever' ||
                              disease_list[finalist[index]].symptom ==
                                  'Urinary-Dysuria, Urinary urgency, Suprapubic pain' ||
                              disease_list[finalist[index]].symptom ==
                                  'Obstetrics & Gyne-Dysuria, Urinary urgency, Suprapubic pain' ||
                              disease_list[finalist[index]].symptom ==
                                  'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' ||
                              disease_list[finalist[index]].symptom ==
                                  'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DoubleSymptoms(
                                      title,
                                      disease_list[finalist[index]].symptom,
                                      patient);
                                },
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Diagnose(
                                      disease_list[finalist[index]].symptom,
                                      disease_list[finalist[index]].disease,
                                      disease_list[finalist[index]].organism,
                                      patient);
                                },
                              ),
                            );
                          }
                        }
                        if (patient == 'Adult') {
                          if (disease_list2[finalist[index]].symptom ==
                                  'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' ||
                              disease_list2[finalist[index]].symptom ==
                                  'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DoubleSymptoms(
                                      title,
                                      disease_list2[finalist[index]].symptom,
                                      patient);
                                },
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Diagnose(
                                      disease_list2[finalist[index]].symptom,
                                      disease_list2[finalist[index]].disease,
                                      disease_list2[finalist[index]].organism,
                                      patient);
                                },
                              ),
                            );
                          }
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0.0, vertical: 4),
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, top: 15, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  if (patient == 'Adult') ...[
                                    Text(
                                      disease_list2[finalist[index]].symptom,
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                  if (patient == 'Children') ...[
                                    Text(
                                      disease_list[finalist[index]].symptom,
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
