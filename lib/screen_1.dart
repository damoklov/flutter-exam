import 'package:flutter_exam/screen_2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'data/elements.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {

  button1Counter() {
    setState(() {
      state.topLeftBox += 1;
      state.total += 1;
    });
  }

  button2Counter() {
    setState(() {
      state.topRightBox += 1;
      state.total += 1;
    });
  }

  button3Counter() {
    setState(() {
      state.bottomLeftBox += 1;
      state.total += 1;
    });
  }

  button4Counter() {
    setState(() {
      state.bottomRightBox += 1;
      state.total +=1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: button1Counter,
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      )),
                  GestureDetector(
                      onTap: button2Counter,
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SecondScreen()),
                        );
                      },
                      child: Container(
                          color: Colors.green,
                          width: 100,
                          height: 100,
                          child: Text(
                              "Screen 1: " + state.total.toString())
                      )
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: button3Counter,
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      )),
                  GestureDetector(
                      onTap: button4Counter,
                      child: Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                      )),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
