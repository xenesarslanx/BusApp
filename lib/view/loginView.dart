import 'package:bus_app/const/colors.dart';
import 'package:bus_app/widgets/appbar.dart';
import 'package:bus_app/widgets/bottomNavigator.dart';
import 'package:bus_app/widgets/textForm.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(MyColors.backColor, "Login"),
      body: Container(
        color: MyColors.backColor,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            myTextForm("Email", const Icon(Icons.mail), null),
            const SizedBox(
              height: 40,
            ),
            myTextForm("Password", const Icon(Icons.visibility), null),
            const SizedBox(
              height: 40,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: MyColors.textFieldColor,
                    elevation: 20,
                    shadowColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 20)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MyBottomBar()));
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}
