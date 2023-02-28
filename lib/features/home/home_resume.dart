import 'package:finances_app/core/colors.dart';
import 'package:finances_app/features/home/components/Icon_resume_component.dart';
import 'package:finances_app/features/home/components/section_show_balance_component.dart';
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                color: ColorsFinancial.blue1,
                height: MediaQuery.of(context).size.height * 0.20,
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
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      "Balance avaliable",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconResumeComponent(Icons.send, "Send", () {}),
                        IconResumeComponent(Icons.send, "Request", () {}),
                        IconResumeComponent(Icons.send, "Transfer", () {}),
                        IconResumeComponent(Icons.send, "Create", () {}),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconResumeComponent(Icons.send, "Send", () {}),
                        IconResumeComponent(Icons.send, "Bills", () {}),
                        IconResumeComponent(Icons.send, "Split", () {}),
                        IconResumeComponent(Icons.send, "Share", () {}),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 25),
                      child: Divider(
                        color: ColorsFinancial.color1,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Text(
                      "Recent Activity",
                      style: TextStyle(
                          color: ColorsFinancial.color0, fontSize: 18),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.chevron_right,
                      color: ColorsFinancial.blue1,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SectionShowBalanceComponent(
                  "Names Store", "Description", "bill", 100, true),
              SectionShowBalanceComponent(
                  "Names Store", "Description", "bill", 100, true),
              SectionShowBalanceComponent(
                  "Names Store", "Description", "bill", 100, false),
              SectionShowBalanceComponent(
                  "Names Store", "Description", "bill", 100, false),
              SectionShowBalanceComponent(
                  "Names Store", "Description", "bill", 100, true),
            ],
          ),
        ),
      ),
    );
  }
}
