import 'package:flutter/material.dart';
import 'package:presenteapp/brathinglob.dart';

class Breathing extends StatefulWidget {
  Breathing({Key? key}) : super(key: key);

  @override
  _BreathingState createState() => _BreathingState();
}

class _BreathingState extends State<Breathing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[100],
        appBar: AppBar(
          title: Text(
            "Breathing",
            style: TextStyle(color: Colors.black, fontSize: 25.0),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue[100],
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(150.0),
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Column(children: [
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Breathinglob()));
                  },
                  child: Container(
                    height: 50,
                    width: 120,
                    child: Icon(
                      Icons.arrow_right_alt,
                    ),
                  ),
                ),
              ]),
              Container(
                  height: 310,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(14),
                        topRight: Radius.circular(14)),
                  ),
                  child: Column(children: [
                    Text(
                      "20",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Rounds elapsed",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            "Inhale",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Spacer(),
                          Icon(
                            Icons.do_not_disturb_on_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "5 sec",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            "Hold",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Spacer(),
                          Icon(
                            Icons.do_not_disturb_on_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "5 sec",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            "Exhale",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Spacer(),
                          Icon(
                            Icons.do_not_disturb_on_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "5 sec",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Text(
                            "Hold",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Spacer(),
                          Icon(
                            Icons.do_not_disturb_on_outlined,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            "5 sec",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.add,
                            color: Colors.blue,
                          )
                        ],
                      ),
                    ),
                    Text(
                      "Reset",
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    )
                  ]))
            ])
          ]),
        ));
  }
}
