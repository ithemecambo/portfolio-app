import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WorkExperiencePage extends StatelessWidget {
  const WorkExperiencePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Expanded(
        child: Center(
          child: Text(
            "Work Experience",
            style: TextStyle(color: Colors.red, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
