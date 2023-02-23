import 'package:flutter/material.dart';


class HomeCashOutflow extends StatefulWidget {
  HomeCashOutflow({Key? key}) : super(key: key);

  @override
  State<HomeCashOutflow> createState() => _HomeCashOutflowState();
}

class _HomeCashOutflowState extends State<HomeCashOutflow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("cashoutflow")),
    );
  }
}