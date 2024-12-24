import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/diagnose.dart';
import 'package:guidelines/Data/disease_list.dart';
import 'package:guidelines/double_symptoms.dart';

late List<String> searchTerms;

class CustomSearchDelegate1child extends SearchDelegate {
  // Demo list to show querying
  int index = 0;
  double a = 2.1;
  List<String> searchTerms = [
    'Fever-Fever X 3 days + Abdominal pain, Diarrhea, Rose spots on body',
    'Fever-In S. Pneumoniae Fever, Cough, Tachypnea, Hypoxemia, Decreased breath sounds. In S. Aureus; Impetigo, Folliculitis, Cellulitis, Mastitis',
    'Fever-Empiric therapy for suspected Gram-negative infections (e.g. pyelonephritis or intra-abdominal infections)',
    'Fever-Fever, Intense generalized headache, Diffuse myalgias, Rash on abdomen or extremities, Eschar (painless papules)',
    'Fever-Rickettsial infections',
    'Fever-Fever, Rigors, Myalgias (especially in the calves and lower back) and Headache',
    'Fever-Fever, Chills, Headache, Malaise, Myalgia, Anorexia, Nausea, Vomiting, Abdominal Pain, or Diarrhea',
    'Fever-Fever, Impaired consciousness, Severe anaemia, Hypoglycemia, Renal impairment, Jaundice',
    'GI-Loose stools (3 or more per day), + fever, vomiting and signs of dehydration',
    'GI-Watery diarrhea',
    'GI-Fever X 3 days + Abdominal pain Diarrhea Rose spots on body',
    'GI-Watery diarrhea (>6 stools per day) + fever + lower abdominal cramping/tenderness',
    'Skin & Soft Tissues-Area of skin erythema, edema, warmth, and tenderness. + fever with chills and malaise',
    'Skin & Soft Tissues-Painful nodule involving hair follicles',
    'Respiratory-Fever, cough, tachypnea + chest/pleuritic pain',
    'Respiratory-Sore throat + Fever',
    'Respiratory-Nasal discharge, (obstruction, and/or congestion), cough, or both that persist for more than 10 but less than 30 days and are not improving',
    'Respiratory-Acute onset but persistent cough (often lasting approximately five days to three weeks) who do not have clinical findings suggestive of pneumonia and do not have COPD',
    'Respiratory-Dyspnea, cough, wheezing + fever',
    'Urinary-Dysuria, Urinary urgency, Suprapubic pain',
    'Ear Infection-Marked erythema of the tympanic membrane and fever or ear pain) and middle ear effusion',
    'Ear Infection-Lethargy/malaise, Abnormal tympanic membrane, Postauricular erythema, postauricular tenderness, and/or protrusion of the pinna, Fever, Narrowing of the external auditory canal, Ear pain, Otorrhea',
    'Ear Infection-Recurrent or persistent ear drainage + hearing loss, perforating tympanic membrane',
    'Ear Infection-Sudden, red patches and blisters, usually on the palms of hands, soles of feet, and face. Flat, round red "targets" (dark circles with purple-grey centers) Itching, Cold sores, Fatigue, Joint pains, + Fever.',
    'Ear Infection-Sore throat and pain when swallowing. Red and swollen tonsils with pus-filled spots. Fever, headache, pain in the ears and neck',
    'Ear Infection-Severe sore throat, dysphagia, and drooling + fever and stridor',
    'Ear Infection-Low-grade fever, malaise, myalgias, rhinorrhea, cough, and mild dysphagia',
    'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea',
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
            while (result != disease_list[index].symptom) {
              index++;
            }

            if (result == 'Respiratory-Sore throat + Fever' ||
                result == 'Urinary-Dysuria, Urinary urgency, Suprapubic pain') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoubleSymptoms(
                        'Symptoms', disease_list[index].symptom, 'Children');
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
                        'Children');
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
            while (result != disease_list[index].symptom) {
              index++;
            }

            if (result == 'Respiratory-Sore throat + Fever' ||
                result == 'Urinary-Dysuria, Urinary urgency, Suprapubic pain' ||
                result ==
                    'First Degree - Erythema, Severe pain. Second Degree - Blister, Pain, Looks white. Third Degree - Leathery, Waxy white, No pain. Fourth Degree - Same as third + Exposed bone/ muscle. Respiratory burn - Associated with Facial burn with soot in nostrils & oral cavity, difficulty in respiration, tachypnoea') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoubleSymptoms(
                        'Symptoms', disease_list[index].symptom, 'Children');
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
                        'Children');
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
