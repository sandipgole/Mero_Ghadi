import 'package:flutter/material.dart';
import 'package:slide_digital_clock/slide_digital_clock.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> month = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Clock'),
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.all(12),
                      color: Colors.grey.shade400,
                      child: Text(
                        DateTime.now().year.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      )),
                  Container(
                      padding: EdgeInsets.all(12),
                      color: Colors.grey.shade400,
                      child: Text(
                        month[DateTime.now().month - 1],
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      )),
                  Container(
                      padding: EdgeInsets.all(12),
                      color: Colors.grey.shade400,
                      child: Text(
                        DateTime.now().day.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 20),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                    DigitalClock(),
                    SizedBox(
                      height: 20,
                    )
                  ]))
            ]));
  }
}
