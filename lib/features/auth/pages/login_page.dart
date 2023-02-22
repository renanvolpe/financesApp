import 'package:finances_app/core/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsFinancial.backgroundColor,
        // color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 120,
            ),
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Daily financial",
              style: TextStyle(fontSize: 28, color: ColorsFinancial.grey1),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: ColorsFinancial.grey3,
                  prefixIcon: Icon(
                    Icons.email,
                    color: ColorsFinancial.grey1,
                  ),
                  filled: true,
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: ColorsFinancial.grey1),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: ColorsFinancial.grey3,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: ColorsFinancial.grey1,
                  ),
                  filled: true,
                  hintText: "Password",
                  hintStyle: TextStyle(color: ColorsFinancial.grey1),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14))),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                      side: BorderSide.none,
                      borderRadius: BorderRadius.circular(5)),
                  value: true,
                  onChanged: (value) {},
                  checkColor: ColorsFinancial.grey1,
                ),
                const Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ColorsFinancial.blue2,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Divider(
                  color: Colors.white,
                ),
                Text(
                  "or continue with",
                  style: TextStyle(color: ColorsFinancial.grey1),
                )
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: ColorsFinancial.grey3,
                            border: Border.all(
                                color: ColorsFinancial.grey1, width: 0.3),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(15),
                        child: Icon(
                          Icons.logo_dev,
                          color: ColorsFinancial.blue2,
                        ))),
                TextButton(
                    onPressed: () {},
                    child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                            color: ColorsFinancial.grey3,
                            border: Border.all(
                                color: ColorsFinancial.grey1, width: 0.3),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(15),
                        child: Icon(
                          Icons.logo_dev,
                          color: ColorsFinancial.blue2,
                        ))),
                TextButton(
                    onPressed: () {},
                    child: Container(
                        decoration: BoxDecoration(
                            color: ColorsFinancial.grey3,
                            border: Border.all(
                                color: ColorsFinancial.grey1, width: 0.3),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.all(15),
                        child: Icon(
                          Icons.logo_dev,
                          color: ColorsFinancial.blue2,
                        ))),
              ],
            )
          ],
        ),
      ),
    );
  }
}
