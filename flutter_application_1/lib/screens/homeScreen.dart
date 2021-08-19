import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/event_card.dart';
import 'package:flutter_application_1/models/events.dart';

class HomeScreen extends StatelessWidget {
  final List<Event> events = [
    Event(
        name: "name - 1",
        location: "location - 1",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 2",
        location: "location - 2",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 3",
        location: "location - 3",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 4",
        location: "location - 4",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 5",
        location: "location - 5",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 6",
        location: "location - 6",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 7",
        location: "location - 7",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 8",
        location: "location - 8",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 9",
        location: "location - 9",
        startDateTime: DateTime.now()),
    Event(
        name: "name - 10",
        location: "location - 10",
        startDateTime: DateTime.now())
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter guide"),
        backgroundColor: Colors.deepPurple[600],
      ),
      // абсолютное позиционирование виджетов...

      // body: Container(
      //   color: Colors.grey,
      //   width: 500,
      //   height: 600,
      //   child: Stack(
      //     alignment: Alignment.bottomRight,
      //     children: [
      //       Container(
      //         color: Colors.blueAccent,
      //         padding: EdgeInsets.all(150.0),
      //         child: Text("1"),
      //       ),
      //       Container(
      //         color: Colors.greenAccent,
      //         padding: EdgeInsets.all(100.0),
      //         child: Text("2"),
      //       ),
      //       Positioned(
      //         top: 20,
      //         left: 40,
      //         child: Container(
      //           color: Colors.yellowAccent,
      //           padding: EdgeInsets.all(50.0),
      //           child: Text("3"),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),

      // рлоядок размещения виджетовб преносы, реверсы...

      // body: Center(
      //   child: Container(
      //     color: Colors.yellow[800],
      //     width: 400,
      //     height: 400,
      //     child: Wrap(
      //       direction: Axis.horizontal,
      //       spacing: 20.0,
      //       runSpacing: 20.0,
      //       alignment: WrapAlignment.center,
      //       runAlignment: WrapAlignment.center,
      //       verticalDirection: VerticalDirection.up,
      //       textDirection: TextDirection.rtl,
      //       children: [
      //         Container(
      //           color: Colors.black,
      //           width: 100,
      //           height: 100,
      //           child: Text(
      //             "X",
      //             style: TextStyle(
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           color: Colors.black,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           color: Colors.black,
      //           width: 100,
      //           height: 100,
      //         ),
      //         Container(
      //           color: Colors.black,
      //           width: 100,
      //           height: 100,
      //           child: Text(
      //             "X",
      //             style: TextStyle(
      //               color: Colors.white,
      //             ),
      //           ),
      //         ),
      //         Container(
      //           color: Colors.black,
      //           width: 100,
      //           height: 100,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // списки виджетов
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(30.0),
        itemCount: events.length,
        itemBuilder: (_, index) => EventCard(event: events[index]),
        // index.toString(), // безконечный индекс....
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text("Add"),
        backgroundColor: Colors.deepPurple[600],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.beach_access),
            label: 'Relax',
          ),
        ],
        backgroundColor: Colors.deepPurple[600],
      ),
    );
  }
}
