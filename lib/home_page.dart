import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:guidelines/checksym.dart';
import 'package:guidelines/checksym2.dart';
import 'package:guidelines/search_disease_child.dart';
import 'package:guidelines/search_disease_adult.dart';
import 'package:guidelines/search_symptom_adult.dart';
import 'package:guidelines/search_symptom_child.dart';
import 'package:guidelines/testing.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  @override
  State<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  _HomePage();
  @override
  final List<String> patientType = [
    'Adult',
    'Child',
  ];
  final List<String> searchType = [
    'Symptom',
    'Disease',
  ];
  String selectedValue1 = '';
  String selectedValue2 = '';
  String searchText = 'Search';
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  String placeHolder1 = 'Patient';
  String placeHolder2 = 'Search By';
  Color colour1 = Color.fromARGB(255, 97, 97, 97);
  Color colour2 = Color.fromARGB(255, 97, 97, 97);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
              image: DecorationImage(
                image: AssetImage(
                    "lib/assests/image_processing20190903-6629-zkv0ze (1).png"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                25, ((MediaQuery.of(context).size.height) / 2) - 10, 25, 0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: Color.fromARGB(255, 187, 187, 187), width: 0.5),
                color: Colors.white,
              ),
              width: (MediaQuery.of(context).size.width) - 50,
              height: 191,
              child: Column(
                children: [
                  const SizedBox(
                    height: 7,
                  ),
                  DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: const InputDecoration(
                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                      // the menu padding when button's width is not specified.
                      contentPadding: EdgeInsets.symmetric(vertical: 16),
                    ),
                    hint: Text(
                      placeHolder1,
                      style: TextStyle(
                        fontSize: 14,
                        color: colour1,
                      ),
                    ),
                    items: patientType
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select gender.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        selectedValue1 = value.toString();
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        selectedValue1 = value.toString();
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                  const SizedBox(height: 6),
                  DropdownButtonFormField2<String>(
                    isExpanded: true,
                    decoration: const InputDecoration(
                      // Add Horizontal padding using menuItemStyleData.padding so it matches
                      // the menu padding when button's width is not specified.
                      contentPadding: EdgeInsets.symmetric(vertical: 16),

                      // Add more decoration..
                    ),
                    hint: Text(
                      placeHolder2,
                      style: TextStyle(
                        fontSize: 14,
                        color: colour2,
                      ),
                    ),
                    items: searchType
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ))
                        .toList(),
                    validator: (value) {
                      if (value == null) {
                        return 'Please select gender.';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value.toString();
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        selectedValue2 = value.toString();
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      padding: EdgeInsets.only(right: 8),
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 24,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(15),
                    onTap: () {
                      setState(() {
                        if (selectedValue1 == '') {
                          placeHolder1 = 'Field can\'t be empty !';
                          colour1 = Colors.red;
                        }
                        if (selectedValue2 == '') {
                          placeHolder2 = 'Field can\'t be empty !';
                          colour2 = Colors.red;
                        }
                        if (selectedValue1 == 'Adult' &&
                            selectedValue2 == 'Disease') {
                          showSearch(
                              context: context,
                              delegate: CustomSearchDelegate2adult());
                        } else if (selectedValue1 == 'Child' &&
                            selectedValue2 == 'Disease') {
                          showSearch(
                              context: context,
                              delegate: CustomSearchDelegate2child());
                        } else if (selectedValue1 == 'Child' &&
                            selectedValue2 == 'Symptom') {
                          // showSearch(
                          //     context: context,
                          //     delegate: CustomSearchDelegate1child());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Checksym2();
                              },
                            ),
                          );
                        } else if (selectedValue1 == 'Adult' &&
                            selectedValue2 == 'Symptom') {
                          // showSearch(
                          //     context: context,
                          //     delegate: CustomSearchDelegate1adult());
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return Checksym();
                              },
                            ),
                          );
                        }
                      });
                    },
                    child: Container(
                      height: 65,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 44, 127, 236),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15))),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Center(
                          child: Text(
                            'Search',
                            style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.w600,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
