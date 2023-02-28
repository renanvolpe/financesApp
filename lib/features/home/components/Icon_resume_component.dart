import 'package:finances_app/core/colors.dart';
import 'package:flutter/material.dart';

class IconResumeComponent extends StatelessWidget {
  IconResumeComponent(this.icon, this.title, this.function, {super.key});
  IconData icon;
  String title;
  void Function() function;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorsFinancial.color3,
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              icon,
              color: ColorsFinancial.blue1,
            )),
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(color: ColorsFinancial.color0),
        )
      ],
    );
  }
}
