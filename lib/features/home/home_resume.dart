import 'package:flutter/material.dart';


class HomeResume extends StatefulWidget {
  HomeResume({Key? key}) : super(key: key);

  @override
  State<HomeResume> createState() => _HomeResumeState();
}

class _HomeResumeState extends State<HomeResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Resume")),
    );
  }
}