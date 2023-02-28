import 'package:flutter/material.dart';


class HomeDeposit extends StatefulWidget {
  HomeDeposit({Key? key}) : super(key: key);

  @override
  State<HomeDeposit> createState() => _HomeDepositState();
}

class _HomeDepositState extends State<HomeDeposit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Deposit")),
    );
  }
}