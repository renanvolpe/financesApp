import 'package:finances_app/core/colors.dart';
import 'package:flutter/material.dart';

class HomeResume extends StatefulWidget {
  const HomeResume({Key? key}) : super(key: key);

  @override
  State<HomeResume> createState() => _HomeResumeState();
}

class _HomeResumeState extends State<HomeResume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsFinancial.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: ColorsFinancial.blue1,
        leading: const Icon(Icons.logo_dev),
        actions: const [
          Icon(Icons.logo_dev),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.logo_dev),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              color: ColorsFinancial.blue1,
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                  const Text(
                    "\$ 1200.00",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  Text(
                    "Balance avaliable",
                    style: TextStyle(color: ColorsFinancial.color1),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
