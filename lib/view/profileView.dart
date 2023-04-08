import 'package:bus_app/const/colors.dart';
import 'package:bus_app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(MyColors.backColor, "Profile"),
      body: Container(
        height:  MediaQuery.of(context).size.height,
        width:  MediaQuery.of(context).size.width,
        color: MyColors.backColor,
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
               color: MyColors.backColor2,
                  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: SizedBox(
              height: 200, width: 300,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("email: bus@gmail.com\n"),
                  Text("password: 1234567890"),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}