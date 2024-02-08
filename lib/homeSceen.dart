import 'package:flutter/material.dart';
import 'package:medicalappointment/addInfo.dart';
import 'package:medicalappointment/completed.dart';
import 'package:medicalappointment/upcoming.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String roteName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool showUpcoming = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Consulation",
            style: TextStyle(
                color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.red,
          currentIndex: index,
          onTap: (value) {
            setState(() {
              index = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: ImageIcon(
                  AssetImage("assets/images/img_1.png"),
                ),
                label: "Upcoming"),
            BottomNavigationBarItem(
                backgroundColor: Colors.brown,
                icon: ImageIcon(
                  AssetImage("assets/images/img_2.png"),
                ),
                label: "completed"),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20),
          child: Column(
            children: [
              SizedBox(
                width: 200,
                height: 50,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                    Colors.green,
                  )),
                  onPressed: () {
                    Navigator.of(context).pushNamed(AddConsulation.routeName);
                  },
                  child:
                      Text(" Add Consulation", style: TextStyle(fontSize: 22)),
                ),
              ),
              Expanded(child: tabs[index]),
            ],
          ),
        )

//       body:Column(
//         children: [
// ElevatedButton(
//     style:ElevatedButton.styleFrom(
//           primary: Colors.blue
//
//       ),
//     onPressed: (){
//       Navigator.pushNamed(context, AddConsulation.routeName);
//     }, child: Text("Add Consulation ")),
//       SizedBox(
//         height: 10,
//       ),
//
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     showUpcoming = true;
//                   });
//                 },
//                 child: Text("Upcoming"),
//                 style: ElevatedButton.styleFrom(
//                   primary: showUpcoming ? Colors.blue : Colors.grey,
//                 ),
//               ),
//               SizedBox(width: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     showUpcoming = false;
//                   });
//                 },
//                 child: Text("Completed"),
//                 style: ElevatedButton.styleFrom(
//                   primary: showUpcoming ? Colors.grey : Colors.blue,
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 20),
//           Visibility(
//             visible: showUpcoming,
//             child:Upcoming(),
//           ),
//           Visibility(
//             visible: !showUpcoming,
//             child: Completed(),
//           ),
//            ],
//          )

        );
  }

  List<Widget> tabs = [Upcoming(), Completed()];
}
