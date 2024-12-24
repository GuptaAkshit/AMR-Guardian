import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/Data/disease_list2.dart';
import 'package:guidelines/double_symptoms.dart';

late List<String> searchTerms;

class CustomSearchDelegate1adult extends SearchDelegate {
  // Demo list to show querying
  int index = 0;
  List<String> searchTerms = [
    'Fever-Fever X 3 days + Abdominal pain, Diarrhea, Rose spots on body',
    'Fever-In S. Pneumoniae Fever, Cough, Tachypnea, Hypoxemia, Decreased breath sounds. In S. Aureus; Impetigo, Folliculitis, Cellulitis, Mastitis',
    'Fever-Empiric therapy for suspected Gram-negative infections (e.g. pyelonephritis or intra-abdominal infections)',
    'Fever-Fever, Intense generalized headache, Diffuse myalgias, Rash on abdomen or extremities, Eschar (painless papules)',
    'Fever-Rickettsial infections',
    'Fever-Fever, Rigors, Myalgias (especially in the calves and lower back) and Headache',
    'Fever-Fever, Chills, Headache, Malaise, Myalgia, Anorexia, Nausea, Vomiting, Abdominal Pain, or Diarrhea',
    'Fever-Fever, Impaired consciousness, Severe anaemia, Hypoglycemia, Renal impairment, Jaundice',
    disease_list2[8].symptom,
    disease_list2[9].symptom,
    disease_list2[10].symptom,
    disease_list2[11].symptom,
    disease_list2[12].symptom,
    disease_list2[13].symptom,
    disease_list2[14].symptom,
    disease_list2[15].symptom,
    disease_list2[16].symptom,
    disease_list2[17].symptom,
    disease_list2[18].symptom,
    disease_list2[19].symptom,
    disease_list2[20].symptom,
    disease_list2[21].symptom,
    disease_list2[22].symptom,
    disease_list2[23].symptom,
    disease_list2[24].symptom,
    disease_list2[25].symptom,
    disease_list2[26].symptom,
    disease_list2[27].symptom,
    disease_list2[28].symptom,
    disease_list2[29].symptom,
    disease_list2[30].symptom,
    disease_list2[31].symptom,
    disease_list2[32].symptom,
    disease_list2[33].symptom,
    disease_list2[34].symptom,
    disease_list2[35].symptom,
    disease_list2[36].symptom,
    disease_list2[37].symptom,
    disease_list2[38].symptom,
    disease_list2[39].symptom,
    disease_list2[40].symptom,
    disease_list2[41].symptom,
    disease_list2[42].symptom,
    disease_list2[43].symptom,
    disease_list2[44].symptom,
    disease_list2[45].symptom,
    disease_list2[46].symptom,
    disease_list2[47].symptom,
    disease_list2[48].symptom,
    disease_list2[49].symptom,
    disease_list2[50].symptom,
    disease_list2[51].symptom,
    disease_list2[52].symptom,
    disease_list2[53].symptom,
    disease_list2[54].symptom,
    disease_list2[55].symptom,
    disease_list2[56].symptom,
    disease_list2[57].symptom,
    disease_list2[58].symptom,
    disease_list2[59].symptom,
    disease_list2[60].symptom,
    disease_list2[61].symptom,
    disease_list2[62].symptom,
    disease_list2[63].symptom,
    disease_list2[64].symptom,
    disease_list2[65].symptom,
    disease_list2[66].symptom,
    disease_list2[67].symptom,
    disease_list2[68].symptom,
    disease_list2[69].symptom,
    disease_list2[70].symptom,
    disease_list2[71].symptom,
    disease_list2[72].symptom,
    disease_list2[73].symptom,
    disease_list2[74].symptom
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
      padding: EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            while (result != disease_list2[index].symptom) {
              index++;
            }

            if (result ==
                    'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' ||
                result ==
                    'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') {
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
            padding: const EdgeInsets.symmetric(vertical: 8.0),
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
      padding: EdgeInsets.symmetric(vertical: 10),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return GestureDetector(
          onTap: () {
            while (result != disease_list2[index].symptom) {
              index++;
            }

            if (result ==
                    'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' ||
                result ==
                    'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') {
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
            padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 6),
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
