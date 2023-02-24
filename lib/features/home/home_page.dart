import 'package:finances_app/core/colors.dart';
import 'package:finances_app/features/home/home_cash_outflow.dart';
import 'package:finances_app/features/home/home_deposit.dart';
import 'package:finances_app/features/home/home_resume.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage([Key? key, this.selectedIndex = 0]) : super(key: key);

  int selectedIndex;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onItemTapped(int index) {
    setState(() {
      widget.selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const HomeResume(),
    HomeDeposit(),
    HomeCashOutflow(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: ColorsFinancial.color1,
        backgroundColor: ColorsFinancial.backgroundColor,
        selectedItemColor: ColorsFinancial.blue1,
        //selectedItemColor: ColorsFinancial.backgroundColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Resume',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'cash outflow',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Deposit',
          ),
        ],
        currentIndex: widget.selectedIndex,

        onTap: _onItemTapped,
      ),
      body: _children[widget.selectedIndex],
    );
  }
}
