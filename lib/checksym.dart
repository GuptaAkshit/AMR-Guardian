import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/check_disease.dart';
import 'package:guidelines/checksym_data.dart';
import 'package:guidelines/questions2.dart';
import 'package:guidelines/search_symptom_adult.dart';
import 'package:guidelines/treatment.dart';

class Checksym extends StatefulWidget {
  Checksym({super.key});
  @override
  State<Checksym> createState() {
    return _Checksym();
  }
}

class _Checksym extends State<Checksym> {
  _Checksym();
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
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  Color tempcolor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Color.fromARGB(255, 18, 31, 65),
        onPressed: () {
          List ans = [];
          for (int i = 0; i < 43; i++) {
            if (arr[i] == true) {
              ans.add(i);
            }
          }

          if (ans.isNotEmpty) {
            if (arr[0] == true) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Questions2(ans, 'Adult');
                  },
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return CheckDisease(ans);
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
                    itemCount: 44,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.8,
                            crossAxisCount: 4,
                            crossAxisSpacing: 3.0,
                            mainAxisSpacing: 3.0),
                    itemBuilder: (BuildContext context, int index) {
                      if (index == 43) {
                        return GestureDetector(
                          onTap: () {
                            showSearch(
                                context: context,
                                delegate: CustomSearchDelegate1adult());
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
                          color: Colors.white,
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
                                    symptomList[index].symptom,
                                    style: GoogleFonts.aBeeZee(
                                        fontSize: symptomList[index].symptom ==
                                                'Regurgitation after Meals'
                                            ? 12
                                            : 14,
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
