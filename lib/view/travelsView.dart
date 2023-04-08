import 'package:bus_app/const/colors.dart';
import 'package:bus_app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class TravelsView extends StatelessWidget {
  const TravelsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(MyColors.backColor, "My Travels"),
      body: Container(
        height: MediaQuery.of(context).size.height/1.2,
        color: MyColors.backColor,
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(15),
              child: Card(
                color: MyColors.backColor2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: [
                    const Text(
                      "X Company",
                      style: TextStyle(fontSize: 30),
                    ),
                    const Divider(
                      height: 4,
                      color: Colors.black,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text("Ankara from to Istanbul\n",
                        style: TextStyle(fontSize: 20)),
                    Row(
                      children: const [
                        Text("PNR: xxxx", style: TextStyle(fontSize: 20)),
                        SizedBox(
                          width: 50,
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: Text("Price: 0000 dollars",
                                style: TextStyle(fontSize: 20))),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }


}
