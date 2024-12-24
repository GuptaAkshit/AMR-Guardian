import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/check_disease.dart';
import 'package:guidelines/check_disease2.dart';
import 'package:guidelines/checksym_data2.dart';
import 'package:guidelines/questions2.dart';
import 'package:guidelines/search_symptom_child.dart';
import 'package:guidelines/treatment.dart';

class Checksym2 extends StatefulWidget {
  Checksym2({super.key});
  @override
  State<Checksym2> createState() {
    return _Checksym2();
  }
}

class _Checksym2 extends State<Checksym2> {
  _Checksym2();
  List<bool> arr = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 68, 4, 94),
        onPressed: () {
          List ans = [];
          for (int i = 0; i < 18; i++) {
            if (arr[i] == true) {
              ans.add(i);
            }
          }
          if (ans.isNotEmpty) {
            if (arr[0] == true) {
              print(ans);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Questions2(ans, 'Children');
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
          setState(() {
            for (int i = 0; i < arr.length; i++) {
              arr[i] = false;
            }
          });
        },
        label: const Text('Next',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20)),
        icon: const Icon(Icons.arrow_forward_ios_sharp),
      ),
      appBar: AppBar(
        title: Text(
          'Symptoms',
          style: GoogleFonts.aBeeZee(
              fontSize: 21,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w600,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: const Color.fromARGB(255, 68, 4, 94),
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
                    itemCount: 19,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.8,
                            crossAxisCount: 4,
                            crossAxisSpacing: 3.0,
                            mainAxisSpacing: 3.0),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 18) {
                        return GestureDetector(
                          onTap: () {
                            showSearch(
                                context: context,
                                delegate: CustomSearchDelegate1child());
                          },
                          child: Card(
                            elevation: 2,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13.0),
                            ),
                            child: InkWell(
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 0, top: 0, bottom: 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Others',
                                      style: GoogleFonts.aBeeZee(
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      }
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            arr[index] = !arr[index];
                          });
                        },
                        child: Card(
                          elevation: 2,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: arr[index]
                                    ? const Color.fromARGB(255, 30, 199, 30)
                                    : const Color.fromARGB(0, 0, 0, 0),
                                width: arr[index] ? 2.2 : 0),
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: InkWell(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 0, right: 0, top: 0, bottom: 0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    symptomList2[index].symptom,
                                    style: GoogleFonts.aBeeZee(
                                        fontSize: 15,
                                        color: arr[index]
                                            ? Color.fromARGB(255, 30, 199, 30)
                                            : Colors.black,
                                        fontWeight: arr[index]
                                            ? FontWeight.w900
                                            : FontWeight.w300),
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
                const SizedBox(
                  height: 75,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
