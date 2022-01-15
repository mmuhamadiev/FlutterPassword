import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var selectedindex = 0;
  String code = '';

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: height * 1,
            width: width,
            color: Colors.white60,
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Enter your PIN",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.grey.shade600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.topCenter,
                    padding: EdgeInsets.only(top: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        DigitHolder(
                          width: width,
                          selectedIndex: selectedindex,
                          index: 0,
                          code: code,
                        ),
                        DigitHolder(
                          width: width,
                          selectedIndex: selectedindex,
                          index: 1,
                          code: code,
                        ),
                        DigitHolder(
                          width: width,
                          selectedIndex: selectedindex,
                          index: 2,
                          code: code,
                        ),
                        DigitHolder(
                          width: width,
                          selectedIndex: selectedindex,
                          index: 3,
                          code: code,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(1);
                                    },
                                    child: Text("1",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(2);
                                    },
                                    child: Text("2",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(3);
                                    },
                                    child: Text("3",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                        border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(4);
                                    },
                                    child: Text("4",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                    ),
                                  ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(5);
                                    },
                                    child: Text("5",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(6);
                                    },
                                    child: Text("6",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(7);
                                    },
                                    child: Text("7",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(8);
                                    },
                                    child: Text("8",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(9);
                                    },
                                    child: Text("9",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {},
                                    child: Text("",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      addDigit(0);
                                    },
                                    child: Text("0",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),),
                                  ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    height: width * 0.2,
                                    width: width * 0.2,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.white),),child: FlatButton(
                                    height: double.maxFinite,
                                    onPressed: () {
                                      backspace();
                                    },
                                    child: Icon(Icons.backspace_outlined),
                                  ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  addDigit(int digit) {
    if (code.length > 3) {
      return;
    }
    setState(() {
      code = code + digit.toString();
      print('Code is $code');
      selectedindex = code.length;
    });
  }

  backspace() {
    if (code.length == 0) {
      return;
    }
    setState(() {
      code = code.substring(0, code.length - 1);
      selectedindex = code.length;
    });
  }
}

class DigitHolder extends StatelessWidget {
  final int selectedIndex;
  final int index;
  final String code;
  const DigitHolder({
    required this.selectedIndex,
    Key? key,
    required this.width,
    required this.index,
    required this.code,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: width * 0.05,
      width: width * 0.05,
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.grey),
          boxShadow: [
            BoxShadow(
              color: index == selectedIndex ? Colors.blue : Colors.transparent,
              offset: Offset(0, 0),
              spreadRadius: 1.5,
              blurRadius: 2,
            ),
          ]),
      child: code.length > index
          ? Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                color: Colors.black.withBlue(40),
                shape: BoxShape.circle,
              ),
            )
          : Container(),
    );
  }
}
