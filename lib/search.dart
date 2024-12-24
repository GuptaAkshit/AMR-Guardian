import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:guidelines/Data/disease_list.dart';
import 'package:guidelines/double_symptoms.dart';
import 'package:guidelines/search_select.dart';

late List<String> searchTerms;

class CustomSearchDelegate extends SearchDelegate {
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
    'Urinary-Fever, chills, flank pain, costovertebral angle tenderness, and nausea/vomiting, without symptoms of cystitis.',
    'Urinary-Fever, chills, flank pain, costovertebral angle tenderness, and nausea/vomiting, with symptoms of cystitis.',
    'Urinary-Dysuria, Urinary urgency, pelvic or perineal pain',
    'Obstetrics & Gyne-Dysuria, Urinary urgency, Suprapubic pain',
    'Obstetrics & Gyne-Fever, cough, weight loss, night sweats, and malaise',
    'Genital Tract-Vulvar burning, soreness, and irritation, accompanied by dysuria or dyspareunia',
    'Genital Tract-Malodorous fishy discharge, no dyspareunia, Off-white /gray thin discharge that coats the vagina',
    'Genital Tract-Malodorous discharge, burning, postcoital bleeding, dyspareunia, dysuria, Thin green-yellow discharge, vulvovaginal erythema',
    'Genital Tract-Dysuria, or discomfort with urination, pruritus, burning, and discharge at the urethral meatus',
    'Genital Tract-Localized, painful inflammation of the breast associated with fever and malaise, along with a fluctuant, tender, palpable mass',
    'Bones & Joints-Bone pain of insidious onset, swelling over the painful area. It can involve only one area (unifocal) or multiple bones (multifocal). The average number of lesions is three or four',
    'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.',
    'Eye Infection-Red, swollen, or itchy eyelids OR Gritty or burning sensation OR “Pink eyes” OR Excessive tearing OR Flaking or scaling of the eyelid skin\nAdvanced cases may also have:\nLight sensitivity, Blurred vision',
    'Eye Infection-Acute inflammation of the eyelid that presents as a localized painful and erythematous swelling or nodule',
    'Eye Infection-Swelling just under the conjunctival side of the eyelid',
    'Eye Infection-Watery or mucoserous discharge and a burning, sandy, or gritty feeling in one eye. Second eye might get involved in 24-48 hours',
    'Eye Infection-Purulent, may be yellow, white, or green. Recurs at lid margins and corners of the eye within minutes of wiping lids.',
    'Eye Infection-pain, visual blurring, photophobia, watery ocular discharge, and often a red eye',
    'Eye Infection-Prodrome of headache, malaise, and fever. Unilateral pain or hypesthesia in the affected eye, forehead, and top of the head may precede or follow the prodrome',
    'Eye Infection-Corneal opacity or infiltrate (typically a round white spot) in association with red eye, photophobia, and foreign body sensation. Mucopurulent discharge is typically present',
    'Ear Infection-Marked erythema of the tympanic membrane and fever or ear pain) and middle ear effusion',
    'Ear Infection-Lethargy/malaise, Abnormal tympanic membrane, Postauricular erythema, postauricular tenderness, and/or protrusion of the pinna, Fever, Narrowing of the external auditory canal, Ear pain, Otorrhea',
    'Ear Infection-Recurrent or persistent ear drainage + hearing loss, perforating tympanic membrane',
    'Ear Infection-Sudden, red patches and blisters, usually on the palms of hands, soles of feet, and face. Flat, round red "targets" (dark circles with purple-grey centers) Itching, Cold sores, Fatigue, Joint pains, + Fever.',
    'Ear Infection-Sore throat and pain when swallowing. Red and swollen tonsils with pus-filled spots. Fever, headache, pain in the ears and neck',
    'Ear Infection-Severe sore throat, dysphagia, and drooling + fever and stridor',
    'Ear Infection-Low-grade fever, malaise, myalgias, rhinorrhea, cough, and mild dysphagia',
    'For burns wound that is clinically or microbiologically not infected',
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
    'Urine culture',
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
            while (result != disease_list[index].symptom) {
              index++;
              if (index > 47) {
                break;
              }
            }
            print(
                '\n----------------------------$index-----------------------------\n');
            if (index > 47) {
              index = 0;
              while (result != disease_list[index].disease) {
                index++;
              }
            }
            print(
                '\n----------------------------$index-----------------------------\n');
            if (result == 'Obstetrics & Gyne-Dysuria, Urinary urgency, Suprapubic pain' ||
                result ==
                    'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' ||
                result == 'Prosthetic joint infection') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoubleSymptoms(
                        'Symptoms', disease_list[index].symptom, 'Adult');
                  },
                ),
              );
            }
            if (index == 5) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchSelect(result, index);
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
            while (result != disease_list[index].symptom) {
              index++;
              if (index > 47) {
                break;
              }
            }
            print(
                '\n----------------------------$index-----------------------------\n');
            if (index > 47) {
              index = 0;
              while (result != disease_list[index].disease) {
                index++;
              }
            }
            print(
                '\n----------------------------$index-----------------------------\n');

            if (result == 'Obstetrics & Gyne-Dysuria, Urinary urgency, Suprapubic pain' ||
                result ==
                    'Bones & Joints-Joint pain, warmth, erythema, induration or edema at the incision site, wound drainage or dehiscence, joint effusion, or fever.' ||
                result == 'Prosthetic joint infection') {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DoubleSymptoms(
                        'Symptoms', disease_list[index].symptom, 'Adult');
                  },
                ),
              );
            }
            if (index == 5) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SearchSelect(result, index);
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
