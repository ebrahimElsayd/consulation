import 'package:flutter/material.dart';
import 'package:medicalappointment/customForm.dart';
import 'package:medicalappointment/upcoming.dart';

class AddConsulation extends StatelessWidget {
  const AddConsulation({super.key});

  static const String routeName = 'add';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData.fallback(),
      ),
      body: Column(
        children: [
          Text(
            "Consulation",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          CustomFormFeild("ID"),
          CustomFormFeild("Status"),
          CustomFormFeild("Time"),
          CustomFormFeild("Date"),
          CustomFormFeild("Patient"),
          CustomFormFeild("Doctor"),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            width: 200,
            height: 50,
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                Colors.green,
              )),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed(Upcoming.roteName);
              },
              child: Text(" Add", style: TextStyle(fontSize: 22)),
            ),
          )
        ],
      ),
    );
  }
}
