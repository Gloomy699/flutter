import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter tutorial",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter guide"),
          backgroundColor: Colors.deepPurple[600],
        ),
        body: Container(
          child: Container(
            margin: EdgeInsets.all(15.0),
            child: IconButton(
              onPressed: () {
                print("button has been pressed");
              },
              icon: Icon(
                Icons.search,
              ),
              iconSize: 75.0,
              color: Colors.red,
            ),
            decoration: BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
              border: Border.all(
                width: 5,
                color: Colors.red,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black87,
                  spreadRadius: 7,
                  blurRadius: 5,
                  offset: Offset(3, 3),
                ),
              ],
            ),
          ),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            //     Colors.redAccent,
            //     Colors.black87,
            //   ],
            // ),
            image: DecorationImage(
              image: AssetImage("assets/images/2.jpeg"),
              fit: BoxFit.fill,
            ),
          ),
        ),

        // Image.asset("assets/images/2.jpeg"),
        // RichText(
        //   text: TextSpan(
        //       style: TextStyle(
        //           fontSize: 50.0,
        //           fontStyle: FontStyle.italic,
        //           letterSpacing: 2.0,
        //           decoration: TextDecoration.underline,
        //           fontWeight: FontWeight.bold,
        //           color: Colors.tealAccent,
        //           fontFamily: "CrimsonText"),
        //       children: <TextSpan>[
        //         TextSpan(text: "Hello"),
        //         TextSpan(
        //           text: "World",
        //           style: TextStyle(color: Colors.lime),
        //         ),
        //         TextSpan(text: "!"),
        //       ]),
        // ),
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
      ),
    ),
  );
}
