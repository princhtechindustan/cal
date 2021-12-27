import 'package:cal/inheritedexmaple/home.dart';
import 'package:cal/inheritedwidgetex2/inheritedex.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class EnterInheritData extends StatefulWidget {
//   EnterInheritData({Key? key}) : super(key: key);
//
//   @override
//   State<EnterInheritData> createState() => _EnterInheritDataState();
// }
//
// class _EnterInheritDataState extends State<EnterInheritData> {
//   DateTime dateTimeController = DateTime.now();
//   TextEditingController eventNameController = TextEditingController();
//   TextEditingController eventDetailsNameController = TextEditingController();
//   TextEditingController yearController = TextEditingController();
//   final globalFormKey = GlobalKey<FormState>();
//   String countryName = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Add New Event"),
//         automaticallyImplyLeading: false,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Form(
//               key: globalFormKey,
//               child: Card(
//                 elevation: 4.0,
//                 child: Padding(
//                   padding: const EdgeInsets.only(top: 40, bottom: 40),
//                   child: Container(
//                     margin: const EdgeInsets.only(left: 20, right: 20),
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           controller: eventNameController,
//                           decoration: const InputDecoration(
//                             labelText: "EventName",
//                             labelStyle: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         TextFormField(
//                           controller: eventDetailsNameController,
//                           decoration: const InputDecoration(
//                             labelText: "EventDetails",
//                             labelStyle: TextStyle(
//                               color: Colors.black,
//                               fontSize: 16,
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Card(
//                           child: Padding(
//                             padding: const EdgeInsets.only(top: 10, bottom: 10),
//                             child: SizedBox(
//                               width: double.infinity,
//                               child: CountryListPick(
//                                 theme: CountryTheme(
//                                   isShowFlag: true,
//                                   isShowTitle: true,
//                                   isShowCode: true,
//                                   isDownIcon: true,
//                                   showEnglishName: false,
//                                   labelColor: Colors.red,
//                                 ),
//                                 initialSelection: '+91',
//                                 onChanged: (CountryCode? code) {
//                                   print(code!.name);
//                                   print(code.code);
//                                   print(code.dialCode);
//                                   print(code.flagUri);
//                                   countryName = code.name!;
//                                   print(countryName);
//                                 },
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 20,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 20, right: 20),
//                           child: Row(
//                             children: [
//                               ElevatedButton(
//                                 child: const Text("Choose Date"),
//                                 onPressed: () => selectDate(context),
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(left: 10),
//                                 width: 35,
//                                 height: 35,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.teal,
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     dateTimeController.day.toString(),
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(left: 10),
//                                 width: 35,
//                                 height: 35,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.teal,
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     dateTimeController.month.toString(),
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               Container(
//                                 margin: const EdgeInsets.only(left: 10),
//                                 width: 50,
//                                 height: 35,
//                                 decoration: const BoxDecoration(
//                                   color: Colors.teal,
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     dateTimeController.year.toString(),
//                                     style: const TextStyle(
//                                       color: Colors.white,
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.bold,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 ElevatedButton(
//                     child: const Text("Submit"),
//                     onPressed: () {
//                       mySubmit();
//                     }),
//               ],
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Future<void> selectDate(BuildContext context) async {
//     DateTime? pickedDate = await showDatePicker(
//         context: context,
//         initialDate: dateTimeController,
//         firstDate: DateTime(1948),
//         lastDate: DateTime(2090));
//     if (pickedDate != null) {
//       setState(() {
//         dateTimeController = pickedDate;
//         print(dateTimeController.toString());
//       });
//     }
//   }
//
//   void mySubmit() {
//     final myInherited = StateContainer.of(context);
//     myInherited.updateEventInfo(
//       eventName: eventNameController.text,
//       eventDetails: eventDetailsNameController.text,
//       eventLocation: countryName,
//       eventDate: dateTimeController.toString(),
//     );
//     print("---------------------->$eventDetailsNameController");
//     Navigator.pop(context);
//   }
// }


class EnterInheritData extends StatefulWidget {
  EnterInheritData({Key? key}) : super(key: key);

  @override
  State<EnterInheritData> createState() => _EnterInheritDataState();
}

class _EnterInheritDataState extends State<EnterInheritData> {
  DateTime dateTimeController = DateTime.now();
  TextEditingController eventNameController = TextEditingController();
  TextEditingController eventDetailsNameController = TextEditingController();
  TextEditingController yearController = TextEditingController();
  final globalFormKey = GlobalKey<FormState>();
  String countryName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Event"),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: globalFormKey,
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 40),
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: eventNameController,
                          decoration: const InputDecoration(
                            labelText: "EventName",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: eventDetailsNameController,
                          decoration: const InputDecoration(
                            labelText: "EventDetails",
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: SizedBox(
                              width: double.infinity,
                              child: CountryListPick(
                                theme: CountryTheme(
                                  isShowFlag: true,
                                  isShowTitle: true,
                                  isShowCode: true,
                                  isDownIcon: true,
                                  showEnglishName: false,
                                  labelColor: Colors.red,
                                ),
                                initialSelection: '+91',
                                onChanged: (CountryCode? code) {
                                  print(code!.name);
                                  print(code.code);
                                  print(code.dialCode);
                                  print(code.flagUri);
                                  countryName = code.name!;
                                  print(countryName);
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            children: [
                              ElevatedButton(
                                child: const Text("Choose Date"),
                                onPressed: () => selectDate(context),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                ),
                                child: Center(
                                  child: Text(
                                    dateTimeController.day.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                ),
                                child: Center(
                                  child: Text(
                                    dateTimeController.month.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                width: 50,
                                height: 35,
                                decoration: const BoxDecoration(
                                  color: Colors.teal,
                                ),
                                child: Center(
                                  child: Text(
                                    dateTimeController.year.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    child: const Text("Submit"),
                    onPressed: () {
                      mySubmit();
                    }),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  Future<void> selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: dateTimeController,
        firstDate: DateTime(1948),
        lastDate: DateTime(2090));
    if (pickedDate != null) {
      setState(() {
        dateTimeController = pickedDate;
        print(dateTimeController.toString());
      });
    }
  }

  void mySubmit() {
    final myInherited = StateContainer.of(context);
    myInherited.updateEventInfo(
      eventName: eventNameController.text,
      eventDetails: eventDetailsNameController.text,
      eventLocation: countryName,
      eventDate: dateTimeController.toString(),
    );
    print("---------------------->$eventDetailsNameController");
    Navigator.pop(context);
  }
}
