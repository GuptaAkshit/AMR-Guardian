import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/medicine.dart';
import 'package:guidelines/menu(1).dart';
import 'package:guidelines/misc.dart';
import 'package:guidelines/search.dart';
import 'package:guidelines/search_disease.dart';
import 'package:guidelines/search_filter.dart';
import 'package:guidelines/search_symptom.dart';

class Select extends StatelessWidget {
  const Select({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 85,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      'AMR Guardian',
                      style: GoogleFonts.aBeeZee(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SearchFilter();
                          },
                        ),
                      );
                    },
                    icon: Icon(Icons.search),
                  )
                ],
              ),
              const SizedBox(
                height: 55,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Protocols :',
                    style: GoogleFonts.aBeeZee(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 233, 233, 233),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Menu('Adult');
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 21, 19, 153),
                                    Color.fromARGB(255, 20, 5, 85)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                width: 335,
                                height: 200,
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    const Align(
                                      child: ClipRRect(
                                        child: Image(
                                          image: AssetImage(
                                              'lib/assests/adults.png'),
                                          height: 175,
                                          width: 200,
                                          color:
                                              Color.fromARGB(255, 92, 93, 180),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 10,
                                          right: 12,
                                        ),
                                        child: Text(
                                          'Adults',
                                          style:
                                              GoogleFonts.aBeeZee(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return Menu('Children');
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            child: Ink(
                              decoration: BoxDecoration(
                                gradient: const LinearGradient(
                                  colors: [
                                    Color.fromARGB(255, 123, 4, 139),
                                    Color.fromARGB(255, 54, 0, 45)
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Container(
                                width: 335,
                                height: 200,
                                alignment: Alignment.center,
                                child: Row(
                                  children: [
                                    const Align(
                                      child: ClipRRect(
                                        child: Image(
                                          image: AssetImage(
                                              'lib/assests/children.png'),
                                          height: 175,
                                          width: 200,
                                          color:
                                              Color.fromARGB(255, 117, 73, 146),
                                        ),
                                      ),
                                    ),
                                    Spacer(),
                                    Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          bottom: 10,
                                          right: 12,
                                        ),
                                        child: Text(
                                          'Children',
                                          style:
                                              GoogleFonts.aBeeZee(fontSize: 20),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Dosage :',
                    style: GoogleFonts.aBeeZee(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 20.0, left: 20, right: 20, top: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Medicine();
                        },
                      ),
                    );
                  },
                  child: Container(
                    height: 125,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: InkWell(
                      child: Row(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: const Image(
                              image: AssetImage(
                                  'lib/assests/pngwing.com (15).png'),
                              height: 150,
                              color: Color.fromARGB(255, 190, 159, 19),
                            ),
                          ),
                          Spacer(),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Dosage Guide',
                                textAlign: TextAlign.end,
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 17,
                                  color: Color.fromARGB(221, 255, 255, 255),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 8, top: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Misc('National Program');
                            },
                          ),
                        );
                      },
                      child: Text(
                        'National Program',
                        textAlign: TextAlign.center,
                      ),
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        foregroundColor: Color.fromARGB(255, 0, 0, 0),
                        backgroundColor: Color.fromARGB(255, 197, 197, 197),
                        fixedSize: Size(
                            (MediaQuery.of(context).size.width / 2) - 28, 75),
                        textStyle: GoogleFonts.aBeeZee(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, right: 20, top: 15),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return Misc('References');
                            },
                          ),
                        );
                      },
                      child: Text('References'),
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        foregroundColor: Color.fromARGB(255, 0, 0, 0),
                        backgroundColor:
                            const Color.fromARGB(255, 197, 197, 197),
                        fixedSize: Size(
                            (MediaQuery.of(context).size.width / 2) - 28, 75),
                        textStyle: GoogleFonts.aBeeZee(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
