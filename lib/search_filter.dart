import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/search_disease.dart';
import 'package:guidelines/search_symptom.dart';

class SearchFilter extends StatelessWidget {
  SearchFilter({super.key});

  @override
  Widget build(BuildContext context) {
    Color colour = Colors.black;
    List list = ['Symptom', 'Disease'];
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search by',
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
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 2,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2.5,
                      crossAxisCount: 2,
                      crossAxisSpacing: 3.5,
                      mainAxisSpacing: 3.5),
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (list[index] == 'Symptom') {
                          showSearch(
                              context: context,
                              delegate: CustomSearchDelegate1());
                        } else {
                          showSearch(
                              context: context,
                              delegate: CustomSearchDelegate2());
                        }
                      },
                      child: Card(
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 5, bottom: 5),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
