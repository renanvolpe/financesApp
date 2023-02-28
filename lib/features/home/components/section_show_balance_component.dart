import 'package:finances_app/core/colors.dart';
import 'package:flutter/material.dart';

class SectionShowBalanceComponent extends StatelessWidget {
  SectionShowBalanceComponent(this.titleStore, this.description, this.typeBill,
      this.price, this.payment,
      {super.key});

  String titleStore;
  String description;
  String typeBill;
  double price;
  bool payment;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                titleStore,
                style: TextStyle(color: ColorsFinancial.color0, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "$description - $typeBill",
                style: TextStyle(color: ColorsFinancial.color0, fontSize: 14),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "R\$ $price",
            style: TextStyle(
                color: payment ? ColorsFinancial.green1 : ColorsFinancial.red1,
                fontSize: 18),
          )
        ],
      ),
    );
  }
}
