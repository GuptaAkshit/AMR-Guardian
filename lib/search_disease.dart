import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/Data/disease_list.dart';
import 'package:guidelines/double_symptoms.dart';
import 'package:guidelines/search_select.dart';

late List<String> searchTerms;

class CustomSearchDelegate2 extends SearchDelegate {
  // Demo list to show querying
  int index = 0;
  List<String> searchTerms = [
    'Typhoid Fever',
    'Empiric therapy of suspected Gram-positive infections',
    'Empiric therapy for suspected Gram-negative infections (e.g. pyelonephritis or intra-abdominal infections)',
    'Scrub Typhus',
    'Rickettsia Infections',
    'Leptospirosis',
    'Vivax Malaria',
    'Falciparum Malaria',
    'Acute Gastroenteritis',
    'Food poisoning',
    'Enteric fever',
    'Hospital acquired diarrhea',
    'Cellulitis',
    'Furunculosis',
    'Community acquired Pneumonia',
    'Acute bacterial rhinosinusitis',
    'Acute bronchitis',
    'Acute bacterial exacerbation of COPD',
    'Acute uncomplicated Cystitis',
    'Acute uncomplicated Pyelonephritis',
    disease_list[20].disease,
    disease_list[21].disease,
    disease_list[22].disease,
    disease_list[23].disease,
    disease_list[24].disease,
    disease_list[25].disease,
    disease_list[26].disease,
    disease_list[27].disease,
    disease_list[28].disease,
    disease_list[29].disease,
    disease_list[30].disease,
    disease_list[31].disease,
    disease_list[32].disease,
    disease_list[33].disease,
    disease_list[34].disease,
    disease_list[35].disease,
    disease_list[36].disease,
    disease_list[37].disease,
    disease_list[38].disease,
    disease_list[39].disease,
    disease_list[40].disease,
    disease_list[41].disease,
    disease_list[42].disease,
    disease_list[43].disease,
    disease_list[44].disease,
    disease_list[45].disease,
    disease_list[46].disease,
    disease_list[47].disease,
    disease_list[48].disease,
    disease_list[49].disease,
    disease_list[50].disease,
  ];

  // first overwrite to
  // clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  // second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  //third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return GridView.builder(
      itemCount: matchQuery.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5,
          crossAxisCount: 1,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0),
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            while (result != disease_list[index].disease) {
              index++;
            }
            if (index < 20 || (index > 39 && index < 50)) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchSelect(result, index);
                  },
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Diagnose(
                        disease_list[index].symptom,
                        disease_list[index].disease,
                        disease_list[index].organism,
                        'Adult');
                  },
                ),
              );
            }
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: InkWell(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      result,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  // last overwrite to show the
  // querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return GridView.builder(
      itemCount: matchQuery.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 2.5,
          crossAxisCount: 1,
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0),
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            while (result != disease_list[index].disease) {
              index++;
            }
            if (index < 20 || (index > 39 && index < 50)) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchSelect(result, index);
                  },
                ),
              );
            } else if (result == 'Prosthetic joint infection') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoubleSymptoms(
                        'Symptoms', disease_list[index].symptom, 'Adult');
                  },
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Diagnose(
                        disease_list[index].symptom,
                        disease_list[index].disease,
                        disease_list[index].organism,
                        'Adult');
                  },
                ),
              );
            }
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            child: InkWell(
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      result,
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
