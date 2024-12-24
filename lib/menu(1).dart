import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/questions.dart';
import 'package:guidelines/menu_data.dart';
import 'package:guidelines/symptoms.dart';

class Menu extends StatelessWidget {
  Menu(this.patient, {super.key});
  final String patient;

  final List<MenuData> menu = [
    MenuData('lib/assests/pngwing.com (3).png', 'Fever'),
    MenuData('lib/assests/pngwing.com (4).png', 'GI Diseases'),
    MenuData('lib/assests/pngwing.com (12).png', 'Skin & Soft Tissues'),
    MenuData('lib/assests/pngwing.com (5).png', 'Respiratory'),
    MenuData('lib/assests/pngwing.com (6).png', 'Urinary'),
    MenuData('lib/assests/pngwing.com (10).png', 'Ear Infections'),
    MenuData('lib/assests/pngwing.com (11).png', 'Burns'),
    MenuData('lib/assests/pngwing.com (13).png', 'Genital Tract'),
    MenuData('lib/assests/pngwing.com (7).png', 'Obstetrics & Gyne'),
    MenuData('lib/assests/pngwing.com (8).png', 'Bones & Joints'),
    MenuData('lib/assests/pngwing.com (9).png', 'Eye Infections'),
    MenuData('lib/assests/pngwing.com.png', 'Dental infections'),
    //MenuData('lib/assests/1pngwing.com.png', 'Endocrinology'),
    //MenuData('lib/assests/2pngwing.com.png', 'Neurological'),
    //MenuData('lib/assests/3pngwing.com.png', 'Cardiological'),
    MenuData('lib/assests/preg.png', 'Pregnancy'),
  ];

  @override
  Widget build(BuildContext context) {
    Color colour = const Color.fromARGB(255, 218, 44, 44);
    Color backColour = const Color.fromARGB(255, 218, 44, 44);
    Color topcolor = const Color.fromARGB(255, 18, 31, 65);
    if (patient == 'Adult') {
      colour = const Color.fromARGB(255, 6, 14, 117);
      backColour = const Color.fromARGB(255, 217, 217, 231);
      topcolor = const Color.fromARGB(255, 18, 31, 65);
    } else if (patient == 'Children') {
      colour = const Color.fromARGB(255, 86, 6, 117);
      backColour = Color.fromARGB(255, 227, 219, 231);
      topcolor = const Color.fromARGB(255, 68, 4, 94);
    }

    int number = 0;
    if (patient == 'Adult') {
      number = 13;
    } else if (patient == 'Children') {
      number = 7;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Categories',
          style: GoogleFonts.aBeeZee(
              fontSize: 21,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: topcolor,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Container(
        color: backColour,
        height: double.infinity,
        child: Scrollbar(
          thickness: 3,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: number,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 2,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (menu[index].title == 'Fever') {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Questions('Fever', patient,
                                      'Does the patient show any of these clinical features?\n\n- Altered sensorium\n- Hypotension: SBP < 90 mm Hg\n- Tachypnoea: RR > 24/ min');
                                },
                              ),
                            );
                          } else {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Symptoms(menu[index].title, patient);
                                },
                              ),
                            );
                          }
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          child: InkWell(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image(
                                      image: AssetImage(menu[index].icon),
                                      height: 100,
                                      color: colour,
                                    )),
                                const SizedBox(height: 20),
                                Text(
                                  menu[index].title,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.aBeeZee(
                                    fontSize: 19,
                                    color: Colors.black87,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
