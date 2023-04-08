import 'package:bus_app/const/colors.dart';
import 'package:bus_app/widgets/appbar.dart';
import 'package:flutter/material.dart';

class TicketView extends StatelessWidget {
  TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(MyColors.backColor, "My Ticket"),
      body: Container(
        color: MyColors.backColor,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Card(
              color: MyColors.backColor2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          const Text("From\n"),
                          DropdownButton(
                              items: null,
                              onChanged: (_) {
                                print("");
                              }),
                          const Text("Ankara\n"),
                        ],
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 4,
                  ),
                  InkWell(
                    onTap: () {
                      print("yer değiş");
                    },
                    child: const Icon(
                      Icons.change_circle,
                      size: 35,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          const Text("To\n"),
                          DropdownButton(
                              items: null,
                              onChanged: (_) {
                                print("");
                              }),
                          const Text("Istanbul"),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 100,
              width: double.maxFinite,
              child: Card(
                color: MyColors.backColor2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Text("Date"),
                      TextButton(
                          onPressed: () {
                            selectDate(context);
                          },
                          //obx
                          child: Text("$selectedDate".substring(0, 10)))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  DateTime selectedDate = DateTime.now();// DateTime selectedDate = DateTime.now().obs;
  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != selectedDate) {
      selectedDate = picked;
    }
  }
}
