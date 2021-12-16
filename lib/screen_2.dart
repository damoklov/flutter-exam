import 'package:flutter/material.dart';

import 'data/elements.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen #2"),
      ),
      body: Row(
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
                    Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                        child: Text(
                          state.topLeftButton.toString(),
                          textAlign: TextAlign.center,
                          textScaleFactor: 2.0,
                        )
                    ),
                    Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                        child: Text(
                          state.topRightButton.toString(),
                          textAlign: TextAlign.center,
                          textScaleFactor: 2.0,
                        )
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: memoryStateChange,
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
                                  "Screen #2: " + state.memoryCount.toString()),
                            ),
                        ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                        child: Text(
                          state.bottomLeftButton.toString(),
                          textAlign: TextAlign.center,
                          textScaleFactor: 2.0,
                        )
                    ),
                    Container(
                        color: Colors.green,
                        width: 100,
                        height: 100,
                        child: Text(
                          state.bottomRightButton.toString(),
                          textAlign: TextAlign.center,
                          textScaleFactor: 2.0,
                        )
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  memoryStateChange() {
    setState(() {
      state.pressedButtons = [false, false, false, false];

      state.bottomLeftButton = 0;
      state.topLeftButton = 0;
      state.topRightButton = 0;
      state.bottomRightButton = 0;
    });
  }
}
