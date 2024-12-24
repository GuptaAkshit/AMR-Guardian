import 'package:flutter/material.dart';
import 'package:guidelines/search_symptom_adult.dart';
import 'package:guidelines/testing2.dart';

class SymptomSelectionPage extends StatelessWidget {
  final List<String> symptoms = [
    "Fever",
    "Cough",
    "Sore Throat",
    "Breathless",
    "Headache",
    "Rash",
    "Chills",
    "Joint Pains",
    "Myalgia",
    "Diarrhea",
    "Pain Abdomen",
    "Vomiting",
    "Loss of Appetite",
    "Acidity",
    "Constipation",
    "Nausea",
    "Weakness",
    "Dizziness",
    "Insomnia",
    "Boils",
    "Itching",
    "Acne",
    "Dysuria",
    "Polyuria",
    "Dysmenorrhea",
    "Vaginal Discharge",
    "Painful Urination",
    "Adnexal Tenderness",
    "Red/Watery Eyes",
    "Blurring of Vision",
    "Injury/Trauma",
    "Bone Pain",
    "Burns",
    "Toothache",
    "Swelling in Tooth Area",
    "Pain Ear",
    "Retroorbital Pain",
    "Malaise",
    "Swelling in Joints",
    "Nasal Congestion",
    "Regurgitation after Meals",
    "Redness",
    "Papules",
    "Urine Urgency",
    "Incontinence",
    "Cervical Tenderness",
    "Burning Sensation",
    "Increased Frequency",
    "Swelling",
    "Sticky Eyes",
    "Bleeding Gums",
    "Others"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Symptoms'),
          backgroundColor: Color.fromARGB(255, 18, 31, 65)),
      body: Scrollbar(
        thickness: 3,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Wrap(
              spacing: 5,
              runSpacing: 5,
              children: symptoms
                  .map((symptom) => SymptomTile(symptom: symptom))
                  .toList(),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSearch(context: context, delegate: CustomSearchDelegate1adult());
        },
        child: Icon(Icons.arrow_forward),
        backgroundColor: Color.fromARGB(255, 18, 31, 65),
      ),
    );
  }
}

class SymptomTile extends StatefulWidget {
  final String symptom;

  SymptomTile({required this.symptom});

  @override
  _SymptomTileState createState() => _SymptomTileState();
}

class _SymptomTileState extends State<SymptomTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: IntrinsicWidth(
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            side: isSelected
                ? BorderSide(color: Color.fromARGB(255, 61, 170, 58), width: 2)
                : BorderSide.none,
          ),
          child: Container(
            height: 50, // Fixed height
            padding: EdgeInsets.symmetric(horizontal: 8),
            constraints: BoxConstraints(
              minWidth: 0,
              maxWidth: double.infinity,
            ),
            child: Center(
              child: Text(
                widget.symptom,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: isSelected
                      ? Color.fromARGB(255, 61, 170, 58)
                      : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
