// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:guidelines/questions.dart';

// class Menu extends StatelessWidget {
//   const Menu(this.patient, {super.key});
//   final String patient;

//   @override
//   Widget build(BuildContext context) {
//     Color colour = const Color.fromARGB(255, 218, 44, 44);
//     if (patient == 'Adult') {
//       colour = const Color.fromARGB(255, 255, 255, 255);
//     } else if (patient == 'Children') {
//       colour = const Color.fromARGB(255, 255, 255, 255);
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Categories',
//           style: GoogleFonts.aBeeZee(
//               fontSize: 21,
//               color: Colors.black,
//               fontWeight: FontWeight.w600,
//               fontStyle: FontStyle.normal),
//         ),
//         backgroundColor: colour,
//         iconTheme: const IconThemeData(color: Colors.black),
//       ),
//       body: GridView(
//         padding: const EdgeInsets.all(15),
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           childAspectRatio: 01,
//           crossAxisSpacing: 20,
//           mainAxisSpacing: 20,
//         ),
//         children: [
//           IconButton(
//             icon: Image.asset(
//               'lib/assests/image (8).png',
//               height: 200,
//               fit: BoxFit.fitWidth,
//             ),
//             iconSize: 200,
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('Fever', patient,
//                         'Does the patient show any of these clinical features?\n\n- Altered sensorium\n- Hypotension: SBP < 90 mm Hg\n- Tachypnoea: RR > 24/ min');
//                   },
//                 ),
//               );
//             },
//             style: IconButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(20)),
//             ),
//             // style: Ink(
//             //   decoration: BoxDecoration(
//             //     color: colour,
//             //     borderRadius: BorderRadius.circular(12),
//             //   ),
//             //   child: Container(
//             //     width: 175,
//             //     height: 150,
//             //     alignment: Alignment.center,
//             //     child: const Text(
//             //       'Fever',
//             //       style: TextStyle(fontSize: 20),
//             //     ),
//             //   ),
//             // ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.ac_unit_sharp),
//             iconSize: 70,
//             // label: const Text(
//             //   'Respiratory',
//             //   style: TextStyle(
//             //     fontSize: 15,
//             //   ),
//             // ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('Respiratory', patient, 'ques');
//                   },
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//             ),

//             // child: Ink(
//             //   decoration: BoxDecoration(
//             //     color: colour,
//             //     borderRadius: BorderRadius.circular(12),
//             //   ),
//             //   child: Container(
//             //     width: 175,
//             //     height: 150,
//             //     alignment: Alignment.center,
//             //     child: const Text(
//             //       'Respiratory',
//             //       style: TextStyle(fontSize: 20),
//             //     ),
//             //   ),
//             // ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('CNS', patient, 'ques');
//                   },
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//             ),
//             child: Ink(
//               decoration: BoxDecoration(
//                 color: colour,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 width: 175,
//                 height: 0,
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'CNS',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('Urinary', patient, 'ques');
//                   },
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//             ),
//             child: Ink(
//               decoration: BoxDecoration(
//                 color: colour,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 width: 175,
//                 height: 125,
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'Urinary',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('Gastrointestinal', patient, 'ques');
//                   },
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//             ),
//             child: Ink(
//               decoration: BoxDecoration(
//                 color: colour,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 width: 175,
//                 height: 125,
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'Gastrointestinal',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('Skin & Soft Tissue', patient, 'ques');
//                   },
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//             ),
//             child: Ink(
//               decoration: BoxDecoration(
//                 color: colour,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 width: 175,
//                 height: 125,
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'Skin & Soft Tissue',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) {
//                     return Questions('Exanthematous', patient, 'ques');
//                   },
//                 ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               padding: EdgeInsets.zero,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(12)),
//             ),
//             child: Ink(
//               decoration: BoxDecoration(
//                 color: colour,
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               child: Container(
//                 width: 175,
//                 height: 125,
//                 alignment: Alignment.center,
//                 child: const Text(
//                   'Exanthematous',
//                   style: TextStyle(fontSize: 20),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
