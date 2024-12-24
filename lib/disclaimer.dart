import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/disclaimer_2.dart';

class Disclaimer extends StatelessWidget {
  const Disclaimer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Disclaimer',
          style: GoogleFonts.roboto(
            fontWeight: FontWeight.w600,
            fontSize: 21,
            color: Colors.white,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10),
            child: Container(
              child: Text(
                'App only for immuno-competent patients and not for immune-compromised or patients on high dose steroids.',
                style: GoogleFonts.aBeeZee(
                    fontSize: 17, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Disclaimer2(),
                      ));
                },
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, right: 10, bottom: 10),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.black),
                    height: 60,
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
