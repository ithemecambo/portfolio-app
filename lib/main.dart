import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Portfolio"),),
      body: Column(children: [
        Spacer(),

        Padding(
          padding: EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0, bottom: MediaQuery.of(context).padding.bottom),
          child: Row(children: [
            // Work Experience
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 0;
                });
              },
              child: Container(
                decoration: BoxDecoration(color: _index == 0 ? Colors.red : Colors.transparent, borderRadius: BorderRadius.circular(25.0),),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: Row(children: [
                    Icon(Icons.business_center, color: _index == 0 ? Colors.white: Colors.black,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(_index == 0 ? "Work Experience" : "", style: TextStyle(color: _index == 0 ? Colors.white : Colors.black),),
                    )
                  ],),
                ),
              ),
            ),

            // Education
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 1;
                });
              },
              child: Container(
                decoration: BoxDecoration(color: _index == 1 ? Colors.red : Colors.transparent, borderRadius: BorderRadius.circular(25.0),),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: Row(children: [
                    Icon(Icons.library_books_outlined, color: _index == 1 ? Colors.white: Colors.black,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(_index == 1 ? "Education" : "", style: TextStyle(color: _index == 1 ? Colors.white : Colors.black),),
                    )
                  ],),
                ),
              ),
            ),

            // Skill
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 2;
                });
              },
              child: Container(
                decoration: BoxDecoration(color: _index == 2 ? Colors.red : Colors.transparent, borderRadius: BorderRadius.circular(25.0),),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: Row(children: [
                    Icon(Icons.build_outlined, color: _index == 2 ? Colors.white: Colors.black,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(_index == 2 ? "Skills" : "", style: TextStyle(color: _index == 2 ? Colors.white : Colors.black),),
                    )
                  ],),
                ),
              ),
            ),

            // Profile
            Spacer(),
            GestureDetector(
              onTap: () {
                setState(() {
                  _index = 3;
                });
              },
              child: Container(
                decoration: BoxDecoration(color: _index == 3 ? Colors.red : Colors.transparent, borderRadius: BorderRadius.circular(25.0),),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                  child: Row(children: [
                    Icon(Icons.person_pin, color: _index == 3 ? Colors.white: Colors.black,),
                    Padding(
                      padding: EdgeInsets.only(left: 12.0),
                      child: Text(_index == 3 ? "Profile" : "", style: TextStyle(color: _index == 3 ? Colors.white : Colors.black),),
                    )
                  ],),
                ),
              ),
            ),

          ],),
        )
      ],),
    );
  }
}
