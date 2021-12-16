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

  topLeftCount() {
    setState(() {
      state.total += 1;
      if (state.total == 4) {
        state.total = 0;
        state.pressedButtons = [true, false, false, false];
      }

      state.topLeftButton += 1;
      state.memoryCount += 1;
    });
  }

  topRightCount() {
    state.total += 1;
    if (state.total == 4) {
      state.total = 0;
      state.pressedButtons = [false, true, false, false];
    }

    setState(() {
      state.topRightButton += 1;
      state.memoryCount += 1;
    });
  }

  bottomLeftCount() {
    state.total += 1;
    if (state.total == 4) {
      state.total = 0;
      state.pressedButtons = [false, false, true, false];
    }

    setState(() {
      state.bottomLeftButton += 1;
      state.memoryCount += 1;
    });
  }

  bottomRightCount() {
    state.total += 1;
    if (state.total == 4) {
      state.total = 0;
      state.pressedButtons = [false, false, false, true];
    }

    setState(() {
      state.bottomRightButton += 1;
      state.memoryCount += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap:(!state.pressedButtons[0]) ? topLeftCount:(){},
                      child: Container(
                        color:(!state.pressedButtons[0]) ? Colors.green : Colors.red,
                        width: 100,
                        height: 100,
                      )),
                  GestureDetector(
                      onTap:(!state.pressedButtons[1]) ? topRightCount:(){},
                      child: Container(
                        color:(!state.pressedButtons[1]) ? Colors.green : Colors.red,
                        width: 100,
                        height: 100,
                      ),
                  ),
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
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                            BorderRadius.all(Radius.circular(400)),
                          ),
                          width: 100,
                          height: 100,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                                "Screen #1: " + state.memoryCount.toString()),
                          ),
                      ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: (!state.pressedButtons[2]) ? bottomLeftCount:(){},
                      child: Container(
                        color:(!state.pressedButtons[2]) ? Colors.green : Colors.red,
                        width: 100,
                        height: 100,
                      )),
                  GestureDetector(
                      onTap: (!state.pressedButtons[3]) ? bottomRightCount:(){},
                      child: Container(
                        color:(!state.pressedButtons[3]) ? Colors.green : Colors.red,
                        width: 100,
                        height: 100,
                      )
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
