import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:presenteapp/breathing.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double height = 150;
  double width = 150;
  double space = 50;
  bool upward = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      appBar: AppBar(
        title: Text(
          "Presente",
          style: TextStyle(color: Colors.black, fontSize: 25.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[100],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 32.0,
                ),
                Center(
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(150.0),
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 140,
                ),
                Stack(children: [
                  Container(
                    height: 50,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Breathing()));
                    },
                    child: Container(
                      height: 50,
                      width: 120,
                      child: Icon(
                        Icons.arrow_upward,
                      ),
                    ),
                  ),
                ]),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                  ),
                  child: Center(
                      child: Text("Set a Breathing Pattern",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
