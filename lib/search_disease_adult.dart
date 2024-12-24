import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/Data/disease_list2.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/double_symptoms.dart';

late List<String> searchTerms;

class CustomSearchDelegate2adult extends SearchDelegate {
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
    disease_list2[9].disease,
    disease_list2[11].disease,
    disease_list2[12].disease,
    disease_list2[13].disease,
    disease_list2[14].disease,
    disease_list2[15].disease,
    disease_list2[16].disease,
    disease_list2[18].disease,
    disease_list2[19].disease,
    disease_list2[20].disease,
    disease_list2[21].disease,
    disease_list2[22].disease,
    disease_list2[23].disease,
    disease_list2[24].disease,
    disease_list2[25].disease,
    disease_list2[26].disease,
    disease_list2[27].disease,
    disease_list2[28].disease,
    disease_list2[30].disease,
    disease_list2[31].disease,
    disease_list2[32].disease,
    disease_list2[33].disease,
    disease_list2[34].disease,
    disease_list2[35].disease,
    disease_list2[36].disease,
    disease_list2[38].disease,
    disease_list2[39].disease,
    disease_list2[40].disease,
    disease_list2[41].disease,
    disease_list2[42].disease,
    disease_list2[43].disease,
    disease_list2[44].disease,
    disease_list2[45].disease,
    disease_list2[46].disease,
    disease_list2[47].disease,
    disease_list2[48].disease,
    disease_list2[49].disease,
    disease_list2[50].disease,
    disease_list2[51].disease,
    disease_list2[52].disease,
    disease_list2[53].disease,
    disease_list2[54].disease,
    disease_list2[55].disease,
    disease_list2[56].disease,
    disease_list2[57].disease,
    disease_list2[58].disease,
    disease_list2[59].disease,
    disease_list2[60].disease,
    disease_list2[61].disease,
    disease_list2[62].disease,
    disease_list2[63].disease,
    disease_list2[64].disease,
    disease_list2[65].disease,
    disease_list2[66].disease,
    disease_list2[67].disease,
    disease_list2[68].disease,
    disease_list2[69].disease,
    disease_list2[70].disease,
    disease_list2[71].disease,
    disease_list2[72].disease,
    disease_list2[73].disease,
    disease_list2[74].disease,
    disease_list2[77].disease,
    disease_list2[78].disease,
    disease_list2[79].disease,
    disease_list2[80].disease,
    disease_list2[81].disease,
    disease_list2[82].disease,
    disease_list2[83].disease,
    disease_list2[84].disease,
    disease_list2[85].disease,
    disease_list2[86].disease,
    disease_list2[87].disease,
    disease_list2[88].disease,
    disease_list2[89].disease,
    disease_list2[90].disease,
    disease_list2[91].disease,
    disease_list2[92].disease,
    disease_list2[93].disease,
    disease_list2[94].disease,
    disease_list2[95].disease,
    disease_list2[96].disease,
    disease_list2[97].disease,
    disease_list2[98].disease,
    disease_list2[99].disease,
    disease_list2[100].disease,
    disease_list2[101].disease,
    disease_list2[102].disease,
    disease_list2[103].disease,
    disease_list2[104].disease,
    disease_list2[105].disease,
    disease_list2[106].disease,
    disease_list2[107].disease,
    disease_list2[108].disease,
    disease_list2[109].disease,
    disease_list2[110].disease,
    disease_list2[111].disease,
    disease_list2[112].disease,
    disease_list2[113].disease,
    disease_list2[114].disease,
    disease_list2[115].disease,
    disease_list2[116].disease,
    disease_list2[117].disease,
    disease_list2[118].disease,
    disease_list2[119].disease,
    disease_list2[120].disease,
    disease_list2[121].disease
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
            while (result != disease_list2[index].disease) {
              index++;
            }
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Diagnose(
                      disease_list2[index].symptom,
                      disease_list2[index].disease,
                      disease_list2[index].organism,
                      'Adult');
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
            while (result != disease_list2[index].disease) {
              index++;
            }
            if (result == 'Prosthetic joint infection') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoubleSymptoms(
                        'Symptoms', disease_list2[index].symptom, 'Adult');
                  },
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Diagnose(
                        disease_list2[index].symptom,
                        disease_list2[index].disease,
                        disease_list2[index].organism,
                        'Adult');
                  },
                ),
              );
            }
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
