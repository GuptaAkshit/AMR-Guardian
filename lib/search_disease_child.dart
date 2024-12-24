import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/Data/disease_list.dart';

late List<String> searchTerms;

class CustomSearchDelegate2child extends SearchDelegate {
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
    disease_list[53].disease,
    disease_list[54].disease,
    disease_list[55].disease,
    disease_list[56].disease,
    disease_list[57].disease,
    disease_list[58].disease,
    disease_list[59].disease,
    disease_list[60].disease,
    disease_list[61].disease,
    disease_list[62].disease,
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
    return ListView.builder(
      itemCount: matchQuery.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            while (result != disease_list[index].disease) {
              index++;
            }

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Diagnose(
                      disease_list[index].symptom,
                      disease_list[index].disease,
                      disease_list[index].organism,
                      'Children');
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
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
    return ListView.builder(
      itemCount: matchQuery.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            while (result != disease_list[index].disease) {
              index++;
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Diagnose(
                      disease_list[index].symptom,
                      disease_list[index].disease,
                      disease_list[index].organism,
                      'Children');
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              child: InkWell(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 12, right: 12, top: 15, bottom: 15),
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
          ),
        );
      },
    );
  }
}
