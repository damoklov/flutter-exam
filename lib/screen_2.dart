import 'package:flutter/material.dart';

import 'data/elements.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  stateSave(){
    setState(() {
      state.bottomLeftBox = 0;
      state.bottomRightBox = 0;
      state.topLeftBox = 0;
      state.topRightBox = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                        child: Text(state.topLeftBox.toString())),
                    Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                        child: Text(state.topRightBox.toString())),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap: stateSave,
                        child: Container(
                            color: Colors.blue,
                            width: 100,
                            height: 100,
                            child: Text(
                                "Total screen 2: " + state.total.toString()))),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                        child: Text(state.bottomLeftBox.toString())),
                    Container(
                        color: Colors.blue,
                        width: 100,
                        height: 100,
                        child: Text(state.bottomRightBox.toString())),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}