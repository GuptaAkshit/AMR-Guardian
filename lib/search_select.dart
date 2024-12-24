import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/Data/disease_list.dart';
import 'package:guidelines/double_symptoms.dart';

class SearchSelect extends StatelessWidget {
  SearchSelect(this.title, this.myindex, {super.key});
  final String title;
  final int myindex;

  @override
  Widget build(BuildContext context) {
    Color colour = Colors.black;
    List list = ['Adult', 'Children'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: GoogleFonts.aBeeZee(
              fontSize: 19,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w400,
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
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 4.5,
                      crossAxisCount: 1,
                      crossAxisSpacing: 3.5,
                      mainAxisSpacing: 3.5),
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (title == 'Respiratory-Sore throat + Fever' ||
                            title ==
                                'Urinary-Dysuria, Urinary urgency, Suprapubic pain') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return DoubleSymptoms('Symptoms',
                                    disease_list[myindex].symptom, list[index]);
                              },
                            ),
                          );
                        } else if (list[index] == 'Adult') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Diagnose(
                                    disease_list[myindex].symptom,
                                    disease_list[myindex].disease,
                                    disease_list[myindex].organism,
                                    'Adult');
                              },
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Diagnose(
                                    disease_list[myindex].symptom,
                                    disease_list[myindex].disease,
                                    disease_list[myindex].organism,
                                    'Children');
                              },
                            ),
                          );
                        }
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 5, bottom: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  list[index],
                                  style: GoogleFonts.aBeeZee(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w300),
                                ),
                              ],
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
