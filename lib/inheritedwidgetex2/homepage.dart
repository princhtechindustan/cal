import 'package:cal/event.dart';
import 'package:cal/inheritedwidgetex2/enterdata.dart';
import 'package:cal/inheritedwidgetex2/inheritedex.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class HomePageInherited extends StatefulWidget {
//   const HomePageInherited({
//     Key? key,
//   }) : super(key: key);
//
//   @override
//   State<HomePageInherited> createState() => _HomePageInheritedState();
// }
//
// class _HomePageInheritedState extends State<HomePageInherited> {
//   Event event = Event(
//       eventName: "", eventDetails: "", eventCountryName: "", eventDate: "");
//
//   @override
//   Widget build(BuildContext context) {
//     final myInherit = StateContainer.of(context);
//     event = myInherit.event;
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         title: const Text("Inherited Widget Example"),
//         elevation: 0,
//         backgroundColor: Colors.red,
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//           Center(
//             child: SizedBox(
//               width: 300,
//               height: 300,
//               child: Material(
//                 color: Colors.white,
//                 elevation: 4.0,
//                 borderRadius: const BorderRadius.all(Radius.circular(24)),
//                 shadowColor: const Color(0x802196f3),
//                 child: Center(
//                   child: Padding(
//                     padding: const EdgeInsets.all(15.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children:    [
//                         if (event!=null)
//                           Text("Event ${event.eventName}",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: 18,
//                             fontFamily: GoogleFonts.sen(
//                               fontWeight: FontWeight.bold,
//                             ).fontFamily,
//                           ),) else Text("No Event Today",
//                           style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 18,
//                           fontFamily: GoogleFonts.sen(
//                             fontWeight: FontWeight.bold,
//                           ).fontFamily,
//                         ),),
//                         const SizedBox(height: 30,),
//                         Row(
//                           children:  [
//                            event!=null?
//                             Expanded(
//                               child: Text("Event Details:- "
//                                   "${event.eventDetails}",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontFamily: GoogleFonts.poppins(
//                                     fontWeight: FontWeight.bold,
//                                   ).fontFamily,
//                                 ),),
//                             )
//                                :Text("Event Details:- No Event Details"),
//                           ],
//                         ),
//                         const SizedBox(height: 30,),
//                         Row(
//                           children:  [
//                             const Icon(Icons.location_on,color: Colors.red,),
//                             const SizedBox(width: 20,),
//                             event!=null?
//                             Expanded(
//                               child: Text("Event Location: - "
//                                   "${event.eventCountryName}",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontFamily: GoogleFonts.poppins(
//                                     fontWeight: FontWeight.bold,
//                                   ).fontFamily,
//                                 ),),
//                             )
//                             :const Text("No Event Location"),
//                           ],
//                         ),
//                         const SizedBox(height: 30,),
//                         Row(
//                           children:  [
//                             const Icon(Icons.calendar_today,color: Colors.red,),
//                             const SizedBox(width: 20,),
//                             event!=null?
//                             Expanded(
//                               child: Text("Event Date: - ${event.eventDate}",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 12,
//                                   fontFamily: GoogleFonts.poppins(
//                                     fontWeight: FontWeight.bold,
//                                   ).fontFamily,
//                                 ),),
//                             )
//                             : Text("No Event Date Available")
//                           ],
//                         ),
//                       ],
//                     ),
//                     // child: Column(
//                     //   mainAxisAlignment: MainAxisAlignment.center,
//                     //   children: [
//                     //     Text(
//                     //       "Event ${event.eventName}",
//                     //       style: TextStyle(
//                     //         color: Colors.black,
//                     //         fontSize: 18,
//                     //         fontFamily: GoogleFonts.sen(
//                     //           fontWeight: FontWeight.bold,
//                     //         ).fontFamily,
//                     //       ),
//                     //     ),
//                     //    const SizedBox(
//                     //       height: 30,
//                     //     ),
//                     //     Row(
//                     //       children: [
//                     //         Expanded(
//                     //           child: Text(
//                     //             "Event Details:- "
//                     //             "${event.eventDetails}",
//                     //             style: TextStyle(
//                     //               color: Colors.black,
//                     //               fontSize: 12,
//                     //               fontFamily: GoogleFonts.poppins(
//                     //                 fontWeight: FontWeight.bold,
//                     //               ).fontFamily,
//                     //             ),
//                     //           ),
//                     //         )
//                     //       ],
//                     //     ),
//                     //     const SizedBox(
//                     //       height: 30,
//                     //     ),
//                     //     Row(
//                     //       children: [
//                     //         const Icon(
//                     //           Icons.location_on,
//                     //           color: Colors.red,
//                     //         ),
//                     //         const SizedBox(
//                     //           width: 20,
//                     //         ),
//                     //         Expanded(
//                     //           child: Text(
//                     //             "Event Location: - "
//                     //             "${event.eventCountryName}",
//                     //             style: TextStyle(
//                     //               color: Colors.black,
//                     //               fontSize: 12,
//                     //               fontFamily: GoogleFonts.poppins(
//                     //                 fontWeight: FontWeight.bold,
//                     //               ).fontFamily,
//                     //             ),
//                     //           ),
//                     //         )
//                     //       ],
//                     //     ),
//                     //     const SizedBox(
//                     //       height: 30,
//                     //     ),
//                     //     Row(
//                     //       children: [
//                     //         const Icon(
//                     //           Icons.calendar_today,
//                     //           color: Colors.red,
//                     //         ),
//                     //         const SizedBox(
//                     //           width: 20,
//                     //         ),
//                     //         Expanded(
//                     //           child: Text(
//                     //             "Event Date: - ${event.eventDate}",
//                     //             style: TextStyle(
//                     //               color: Colors.black,
//                     //               fontSize: 12,
//                     //               fontFamily: GoogleFonts.poppins(
//                     //                 fontWeight: FontWeight.bold,
//                     //               ).fontFamily,
//                     //             ),
//                     //           ),
//                     //         )
//                     //       ],
//                     //     ),
//                     //   ],
//                     // ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: const Icon(Icons.add),
//         onPressed: () async {
//           dynamic result;
//           result = await Navigator.push(context,
//               MaterialPageRoute(builder: (context) => EnterInheritData()));
//         },
//       ),
//     );
//   }
// }


class HomePageInherited extends StatefulWidget {
  const HomePageInherited({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePageInherited> createState() => _HomePageInheritedState();
}

class _HomePageInheritedState extends State<HomePageInherited> {
  Event event = Event(
      eventName: "", eventDetails: "", eventCountryName: "", eventDate: "");

  @override
  Widget build(BuildContext context) {
    final myInherit = StateContainer.of(context);
    event = myInherit.event;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Inherited Widget Example"),
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 300,
              height: 300,
              child: Material(
                color: Colors.white,
                elevation: 4.0,
                borderRadius: const BorderRadius.all(Radius.circular(24)),
                shadowColor: const Color(0x802196f3),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:    [
                        if (event!=null)
                          Text("Event ${event.eventName}",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: GoogleFonts.sen(
                                fontWeight: FontWeight.bold,
                              ).fontFamily,
                            ),) else Text("No Event Today",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: GoogleFonts.sen(
                              fontWeight: FontWeight.bold,
                            ).fontFamily,
                          ),),
                        const SizedBox(height: 30,),
                        Row(
                          children:  [
                            event!=null?
                            Expanded(
                              child: Text("Event Details:- "
                                  "${event.eventDetails}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ).fontFamily,
                                ),),
                            )
                                :Text("Event Details:- No Event Details"),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children:  [
                            const Icon(Icons.location_on,color: Colors.red,),
                            const SizedBox(width: 20,),
                            event!=null?
                            Expanded(
                              child: Text("Event Location: - "
                                  "${event.eventCountryName}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ).fontFamily,
                                ),),
                            )
                                :const Text("No Event Location"),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        Row(
                          children:  [
                            const Icon(Icons.calendar_today,color: Colors.red,),
                            const SizedBox(width: 20,),
                            event!=null?
                            Expanded(
                              child: Text("Event Date: - ${event.eventDate}",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                  ).fontFamily,
                                ),),
                            )
                                : Text("No Event Date Available")
                          ],
                        ),
                      ],
                    ),
                    // child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text(
                    //       "Event ${event.eventName}",
                    //       style: TextStyle(
                    //         color: Colors.black,
                    //         fontSize: 18,
                    //         fontFamily: GoogleFonts.sen(
                    //           fontWeight: FontWeight.bold,
                    //         ).fontFamily,
                    //       ),
                    //     ),
                    //    const SizedBox(
                    //       height: 30,
                    //     ),
                    //     Row(
                    //       children: [
                    //         Expanded(
                    //           child: Text(
                    //             "Event Details:- "
                    //             "${event.eventDetails}",
                    //             style: TextStyle(
                    //               color: Colors.black,
                    //               fontSize: 12,
                    //               fontFamily: GoogleFonts.poppins(
                    //                 fontWeight: FontWeight.bold,
                    //               ).fontFamily,
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //     const SizedBox(
                    //       height: 30,
                    //     ),
                    //     Row(
                    //       children: [
                    //         const Icon(
                    //           Icons.location_on,
                    //           color: Colors.red,
                    //         ),
                    //         const SizedBox(
                    //           width: 20,
                    //         ),
                    //         Expanded(
                    //           child: Text(
                    //             "Event Location: - "
                    //             "${event.eventCountryName}",
                    //             style: TextStyle(
                    //               color: Colors.black,
                    //               fontSize: 12,
                    //               fontFamily: GoogleFonts.poppins(
                    //                 fontWeight: FontWeight.bold,
                    //               ).fontFamily,
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //     const SizedBox(
                    //       height: 30,
                    //     ),
                    //     Row(
                    //       children: [
                    //         const Icon(
                    //           Icons.calendar_today,
                    //           color: Colors.red,
                    //         ),
                    //         const SizedBox(
                    //           width: 20,
                    //         ),
                    //         Expanded(
                    //           child: Text(
                    //             "Event Date: - ${event.eventDate}",
                    //             style: TextStyle(
                    //               color: Colors.black,
                    //               fontSize: 12,
                    //               fontFamily: GoogleFonts.poppins(
                    //                 fontWeight: FontWeight.bold,
                    //               ).fontFamily,
                    //             ),
                    //           ),
                    //         )
                    //       ],
                    //     ),
                    //   ],
                    // ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          dynamic result;
          result = await Navigator.push(context,
              MaterialPageRoute(builder: (context) => EnterInheritData()));
        },
      ),
    );
  }
}
