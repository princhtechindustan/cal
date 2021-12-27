import 'package:cal/event.dart';
import 'package:flutter/material.dart';

// class StateContainer extends StatefulWidget {
// final Widget child;
// final Event? event;
//
//  const StateContainer({Key? key, required this.child, this.event,})
//      : super(key: key);
//
// static StateContainerState of(BuildContext context){
// return(context.dependOnInheritedWidgetOfExactType<InheritedContainer>())!.data;
// }
//
// @override
//   StateContainerState createState() => StateContainerState();
// }
//
// class StateContainerState extends State<StateContainer> {
//
//   // Event event = Event(eventName: "", eventDetails: "",
//   //     eventCountryName: "", eventDate: "");
//   Event event = Event(eventName: "", eventDetails: "",
//       eventCountryName: "", eventDate: "");
//
//   void updateEventInfo({eventName, eventDetails, eventDate, eventLocation}) {
//     if (event == null) {
//       event = Event(eventName: eventName, eventDetails: eventDetails,
//           eventDate: eventDate, eventCountryName: eventLocation);
//       setState(() {
//         event = event;
//       });
//     }
//     else {
//       setState(() {
//         event.eventName = eventName ?? event.eventName;
//         event.eventDetails = eventDetails ?? event.eventDetails;
//         event.eventDate = eventDate ?? event.eventDate;
//         event.eventCountryName = eventLocation ?? event.eventCountryName;
//       });
//     }
//
//
//     // List<Event> event =[];
//     // void updateEventInfo({eventName,eventDetails,eventDate,eventLocation}){
//     //   event = Event(eventName: eventName,eventDetails: eventDetails,
//     //   eventCountryName: eventLocation,eventDate: eventDate) as List<Event>;
//     // }
//
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return InheritedContainer(
//       data: this,
//       child: widget.child,
//     );
//   }
// }
// class InheritedContainer extends InheritedWidget {
//   final StateContainerState data;
//
//   const InheritedContainer({Key? key,required this.data, required Widget child}) :
//         super(key: key, child: child);
//
//   @override
//   bool updateShouldNotify( InheritedContainer oldWidget) {
//     return true;
//   }
// }



class StateContainer extends StatefulWidget {
  final Widget child;
  final List<Event>? event;

  const StateContainer({Key? key, required this.child, this.event,})
      : super(key: key);

  static StateContainerState of(BuildContext context){
    return(context.dependOnInheritedWidgetOfExactType<InheritedContainer>())!.data;
  }

  @override
  StateContainerState createState() => StateContainerState();
}

class StateContainerState extends State<StateContainer> {

  // Event event = Event(eventName: "", eventDetails: "",
  //     eventCountryName: "", eventDate: "");
  Event event = Event(eventName: "", eventDetails: "",
      eventCountryName: "", eventDate: "");

  void updateEventInfo({eventName, eventDetails, eventDate, eventLocation}) {
    if (event == null) {
      event = Event(eventName: eventName, eventDetails: eventDetails,
          eventDate: eventDate, eventCountryName: eventLocation);
      setState(() {
        event = event;
      });
    }
    else {
      setState(() {
        event.eventName = eventName ?? event.eventName;
        event.eventDetails = eventDetails ?? event.eventDetails;
        event.eventDate = eventDate ?? event.eventDate;
        event.eventCountryName = eventLocation ?? event.eventCountryName;
      });
    }


    // List<Event> event =[];
    // void updateEventInfo({eventName,eventDetails,eventDate,eventLocation}){
    //   event = Event(eventName: eventName,eventDetails: eventDetails,
    //   eventCountryName: eventLocation,eventDate: eventDate) as List<Event>;
    // }

  }

  @override
  Widget build(BuildContext context) {
    return InheritedContainer(
      data: this,
      child: widget.child,
    );
  }
}
class InheritedContainer extends InheritedWidget {
  final StateContainerState data;

  const InheritedContainer({Key? key,required this.data, required Widget child}) :
        super(key: key, child: child);

  @override
  bool updateShouldNotify( InheritedContainer oldWidget) {
    return true;
  }
}