import 'package:finances_app/core/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool darkTheme = true;
  late ColorsFinancial colorsFinancial;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorsFinancial.backgroundColor,
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Light or Dark",
                  style: TextStyle(color: ColorsFinancial.color1),
                ),
                Switch(
                    value: darkTheme,
                    onChanged: (value) => setState(() {
                          darkTheme = value;
                          ColorsFinancial(darkTheme);
                        }))
              ],
            ),
          ]),
      resizeToAvoidBottomInset: false,
      body: Container(
        color: ColorsFinancial.backgroundColor,
        // color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            const FlutterLogo(
              size: 100,
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Daily financial",
              style: TextStyle(fontSize: 28, color: ColorsFinancial.color1),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: ColorsFinancial.color3,
                  prefixIcon: Icon(
                    Icons.email,
                    color: ColorsFinancial.color1,
                  ),
                  filled: true,
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: ColorsFinancial.color1),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(14))),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: InputDecoration(
                  fillColor: ColorsFinancial.color3,
                  prefixIcon: Icon(
                    Icons.lock,
                    color: ColorsFinancial.color1,
                  ),
                  filled: true,
                  hintText: "Password",
                  hintStyle: TextStyle(color: ColorsFinancial.color1),
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
                  checkColor: ColorsFinancial.color1,
                ),
                Text(
                  "Remember me",
                  style: TextStyle(
                      fontSize: 14,
                      color: ColorsFinancial.color1,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            TextButton(
                onPressed: () {
                  GoRouter.of(context).push("/home");
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: ColorsFinancial.blue2,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    "Sign in",
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
                  "or sign Up here",
                  style: TextStyle(color: ColorsFinancial.color1),
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
                            color: ColorsFinancial.color3,
                            border: Border.all(
                                color: ColorsFinancial.color1, width: 0.3),
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
                            color: ColorsFinancial.color3,
                            border: Border.all(
                                color: ColorsFinancial.color1, width: 0.3),
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
                            color: ColorsFinancial.color3,
                            border: Border.all(
                                color: ColorsFinancial.color1, width: 0.3),
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
