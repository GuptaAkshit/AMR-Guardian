import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/Data/disease_list2.dart';
import 'package:guidelines/diagnose.dart';

class CheckDisease extends StatelessWidget {
  const CheckDisease(this.ans, {super.key});
  final List ans;

  @override
  Widget build(BuildContext context) {
    int count = 0;
    final List temp = [];
    for (int k = 0; k < 113; k++) {
      int tempcount = 0;
      for (int i = 0; i < ans.length; i++) {
        for (int j = 0; j < disease_list2[k].list.length; j++) {
          if (ans[i] == disease_list2[k].list[j]) {
            tempcount++;
            break;
          }
        }
      }
      if (tempcount == ans.length) {
        temp.add(k);
        count++;
      }
    }
    if (temp.isEmpty) {
      count = 1;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Diseases',
          style: GoogleFonts.aBeeZee(
              fontSize: 21,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: const Color.fromARGB(255, 18, 31, 65),
        iconTheme:
            const IconThemeData(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      body: Container(
        child: Scrollbar(
          thickness: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: GridView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: count,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 4.325,
                            crossAxisCount: 1,
                            crossAxisSpacing: 4.0,
                            mainAxisSpacing: 4.0),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {
                          if (temp.isNotEmpty) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Diagnose(
                                      disease_list2[temp[index]].symptom,
                                      disease_list2[temp[index]].disease,
                                      disease_list2[temp[index]].organism,
                                      'Adult');
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
                                  if (temp.isEmpty) ...[
                                    Text(
                                      'No match found!',
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ] else ...[
                                    Text(
                                      disease_list2[temp[index]].disease,
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
