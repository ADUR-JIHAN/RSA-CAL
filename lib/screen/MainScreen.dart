import 'dart:math';

import 'package:bubble_bottom_bar/bubble_bottom_bar.dart';
import 'package:commons/commons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:vector_math/vector_math_64.dart' as math;

class ProfileScreen extends StatefulWidget {
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  final today = DateTime.now();
  int p1, p2, n, tn, e, d, m, ct, ctt, dtt, a, h = 20;
  String s1 = '',
      s2 = '',
      s3 = '',
      s4 = '',
      s5 = '',
      s6 = '',
      s7 = ' ',
      s8 = '',
      ls = "Enter the cyper text:",
      s9 = '';
  int currentIndex = 0;
  final myController = TextEditingController();
  TextEditingController Prime1Controller = new TextEditingController();
  TextEditingController Prime2Controller = new TextEditingController();
  TextEditingController PublicKeyController = new TextEditingController();
  TextEditingController MSZController = new TextEditingController();
  TextEditingController CyperController = new TextEditingController();

  Widget build(BuildContext context) {
    int _current = 0;

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          backgroundColor: const Color(0xFFE9E9E9),
          title: const Text('RSA Calculator',
              style: TextStyle(color: Colors.green)),
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFE9E9E9),
      body: Container(

          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Positioned(
                  top: 0,
                  height: height * 0.6,
                  left: 0,
                  right: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      bottom: const Radius.circular(30),
                    ),
                    child: Container(
                      color: Color(0xFFE9E9E9),
                      padding: const EdgeInsets.only(
                          top: 8, left: 26, right: 16, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              "16701027",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            subtitle: Text(
                              "Md. Khalilul Mostafa Jihan",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 30,
                                color: Colors.deepOrange,
                              ),
                            ) ,
                            trailing: ClipOval(
                                child: Image.asset(
                                  'images/jiha.jpg',
                                  height: 370,
                                  width: 60,
                                  fit: BoxFit.fitWidth,
                                )),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: height,
                  left: 0,
                  right: 0,
                  bottom: 2,
                  child: SingleChildScrollView(
                    child: Container(
                      height: height * 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 18,
                          ),
                          Expanded(
                              child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: ConstrainedBox(
                                    constraints: BoxConstraints(),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                            height: 25,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Input 2 prime numbers P and Q:",
                                                style: const TextStyle(
                                                    color: Colors.cyan,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 45,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 0),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "(it is recommended that choose prime number P and Q wisely such that multiplication of P and Q not less than 122 since you are working with text)",
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: 30,
                                              alignment: Alignment.topLeft,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 10),
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 5,
                                                    right: 0,
                                                  ),
                                                  child: new TextFormField(
                                                    controller: Prime1Controller,
                                                    decoration:
                                                    new InputDecoration(
                                                      labelText:
                                                      "Enter a prime number P:-",
                                                      fillColor: Colors.white,
                                                      labelStyle: TextStyle(
                                                          fontSize: 20.0,
                                                          color:
                                                          Colors.deepOrange),
                                                      border:
                                                      new OutlineInputBorder(
                                                        borderRadius:
                                                        new BorderRadius
                                                            .circular(25.0),
                                                        borderSide:
                                                        new BorderSide(),
                                                      ),
                                                    ),
                                                  ))),
                                          Container(
                                              height: 30,
                                              alignment: Alignment.topLeft,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 10),
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 5,
                                                    right: 0,
                                                  ),
                                                  child: new TextFormField(
                                                    controller: Prime2Controller,
                                                    decoration:
                                                    new InputDecoration(
                                                      labelText:
                                                      "Enter another prime number Q:-",
                                                      fillColor: Colors.white,
                                                      labelStyle: TextStyle(
                                                          fontSize: 20.0,
                                                          color:
                                                          Colors.deepOrange),
                                                      border:
                                                      new OutlineInputBorder(
                                                        borderRadius:
                                                        new BorderRadius
                                                            .circular(25.0),
                                                        borderSide:
                                                        new BorderSide(),
                                                      ),
                                                    ),
                                                  ))),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 0,
                                                  left: 2,
                                                  right: 0,
                                                ),
                                                child: NiceButton(
                                                  mini: true,
                                                  icon: Icons.check,
                                                  background: Colors.cyan,
                                                  onPressed: () {
                                                    p1 = int.parse(
                                                        Prime1Controller.text);
                                                    p2 = int.parse(
                                                        Prime2Controller.text);
                                                    if (!isPrime(p1) ||
                                                        !isPrime(p2)) {
                                                      Alert(
                                                        context: context,
                                                        type: AlertType.error,
                                                        title: "ALERT",
                                                        desc:
                                                        "Either P or Q is not prime number. Please check.",
                                                      ).show();
                                                    } else if (p1 * p2 < 100) {
                                                      Alert(
                                                        context: context,
                                                        type: AlertType.error,
                                                        title: "ALERT",
                                                        desc:
                                                        "Multiplication of P and Q is less than 125.",
                                                      ).show();
                                                    } else {
                                                      n = p1 * p2;
                                                      tn = (p1 - 1) * (p2 - 1);
                                                      s1 = n.toString();
                                                      s2 = tn.toString();
                                                      s3 = '';
                                                      for (var i = 2;
                                                      i < tn;
                                                      ++i) {
                                                        if (gcd(i, tn) == 1)
                                                          s3 = s3 +
                                                              i.toString() +
                                                              " ";
                                                      }
                                                      if (s3.length <= 50) {
                                                        h = 30;
                                                      } else if (s3.length <=
                                                          100 &&
                                                          s3.length >= 51) {
                                                        h = 60;
                                                      } else if (s3.length <=
                                                          200 &&
                                                          s3.length >= 101) {
                                                        h = 80;
                                                      } else {
                                                        h = 120;
                                                      }

                                                      (context as Element)
                                                          .reassemble();
                                                    }
                                                  },
                                                )),
                                          ),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Calculating the value of n:" +
                                                    s1,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Calculating the value of φ(n):" +
                                                    s2,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: height * h / 500,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 0,
                                                  left: 10,
                                                  right: 0,
                                                ),
                                                child: SelectableText(
                                                  'Choose the value of e from the following array:' +
                                                      s3,
                                                  cursorColor: Colors.red,
                                                  showCursor: true,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w700),
                                                  toolbarOptions: ToolbarOptions(
                                                      copy: true,
                                                      selectAll: true,
                                                      cut: false,
                                                      paste: false),
                                                )),
                                          ),
                                          Container(
                                              height: 30,
                                              alignment: Alignment.topLeft,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 10),
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 5,
                                                    right: 0,
                                                  ),
                                                  child: new TextFormField(
                                                    controller:
                                                    PublicKeyController,
                                                    decoration:
                                                    new InputDecoration(
                                                      labelText:
                                                      "Choose the value of e:",
                                                      fillColor: Colors.white,
                                                      labelStyle: TextStyle(
                                                          fontSize: 20.0,
                                                          color:
                                                          Colors.deepOrange),
                                                      border:
                                                      new OutlineInputBorder(
                                                        borderRadius:
                                                        new BorderRadius
                                                            .circular(25.0),
                                                        borderSide:
                                                        new BorderSide(),
                                                      ),
                                                    ),
                                                  ))),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 0,
                                                  left: 2,
                                                  right: 0,
                                                ),
                                                child: NiceButton(
                                                    mini: true,
                                                    icon: Icons.check,
                                                    background: Colors.cyan,
                                                    onPressed: () {
                                                      e = int.parse(
                                                          PublicKeyController
                                                              .text);
                                                      s4 = e.toString();
                                                      int i, x;
                                                      for (i = 1; i <= tn; i++) {
                                                        x = 1 + i * tn;
                                                        if (x % e == 0) {
                                                          d = (x / e).toInt();
                                                          break;
                                                        }
                                                      }
                                                      s5 = d.toString();
                                                      (context as Element)
                                                          .reassemble();
                                                    })),
                                          ),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Calculating the value of d:" +
                                                    s5,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "So the public key is: (" +
                                                    s4 +
                                                    "," +
                                                    s1 +
                                                    ")",
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 40,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "So the private key is: (" +
                                                    s5 +
                                                    "," +
                                                    s1 +
                                                    ")",
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 25,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Encryption",
                                                style: const TextStyle(
                                                    color: Colors.cyan,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: 30,
                                              alignment: Alignment.topLeft,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 10),
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 5,
                                                    right: 0,
                                                  ),
                                                  child: new TextFormField(
                                                    controller: MSZController,
                                                    decoration:
                                                    new InputDecoration(
                                                      labelText:
                                                      "Enter a message :",
                                                      fillColor: Colors.white,
                                                      labelStyle: TextStyle(
                                                          fontSize: 20.0,
                                                          color:
                                                          Colors.deepOrange),
                                                      border:
                                                      new OutlineInputBorder(
                                                        borderRadius:
                                                        new BorderRadius
                                                            .circular(25.0),
                                                        borderSide:
                                                        new BorderSide(),
                                                      ),
                                                    ),
                                                  ))),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 0,
                                                  left: 2,
                                                  right: 0,
                                                ),
                                                child: NiceButton(
                                                    mini: true,
                                                    icon: Icons.check,
                                                    background: Colors.cyan,
                                                    onPressed: () {
                                                      String msg = enc(
                                                          MSZController.text
                                                              .toLowerCase(),
                                                          e,
                                                          n);

                                                      //ctt = power(m, e, n);

                                                      s6 = MSZController.text
                                                          .toString();
                                                      s7 = msg;
                                                      (context as Element)
                                                          .reassemble();
                                                    })),
                                          ),
                                          Container(
                                            height: 25,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Plain text :" + s6,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 50,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 0,
                                                  left: 10,
                                                  right: 0,
                                                ),
                                                child: SelectableText(
                                                  "Cyper text:" + s7,
                                                  cursorColor: Colors.red,
                                                  showCursor: true,
                                                  style: const TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 15,
                                                      fontWeight:
                                                      FontWeight.w700),
                                                  toolbarOptions: ToolbarOptions(
                                                      copy: true,
                                                      selectAll: true,
                                                      cut: false,
                                                      paste: false),
                                                )),
                                          ),
                                          Container(
                                            height: 25,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Decryption",
                                                style: const TextStyle(
                                                    color: Colors.cyan,
                                                    fontSize: 25,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 60,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 2,
                                                right: 0,
                                              ),
                                              child: NiceButton(
                                                width: 250,
                                                radius: 10.0,
                                                text: "decrypt the cyper text",
                                                background: Colors.cyan,
                                                onPressed: () {
                                                  s8 = s7;
                                                  //s8=s7.toString();
                                                  //int cv= int.parse(s8);
                                                  s9 = dec(s7, d, n);
                                                  ls = s7;
                                                  (context as Element)
                                                      .reassemble();
                                                },
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "  Or",
                                                style: const TextStyle(
                                                    color: Colors.orange,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.w900),
                                              ),
                                            ),
                                          ),
                                          Container(
                                              height: 30,
                                              alignment: Alignment.topLeft,
                                              margin: const EdgeInsets.symmetric(
                                                  horizontal: 5, vertical: 10),
                                              child: Padding(
                                                  padding: const EdgeInsets.only(
                                                    bottom: 0,
                                                    left: 5,
                                                    right: 0,
                                                  ),
                                                  child: new TextFormField(
                                                    controller: CyperController,
                                                    decoration:
                                                    new InputDecoration(
                                                      labelText:
                                                      "Enter the cyper text:",
                                                      fillColor: Colors.white,
                                                      labelStyle: TextStyle(
                                                          fontSize: 20.0,
                                                          color:
                                                          Colors.deepOrange),
                                                      border:
                                                      new OutlineInputBorder(
                                                        borderRadius:
                                                        new BorderRadius
                                                            .circular(25.0),
                                                        borderSide:
                                                        new BorderSide(),
                                                      ),
                                                    ),
                                                  ))),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                  bottom: 0,
                                                  left: 2,
                                                  right: 0,
                                                ),
                                                child: NiceButton(
                                                    mini: true,
                                                    icon: Icons.check,
                                                    background: Colors.cyan,
                                                    onPressed: () {
                                                      s8 = CyperController.text
                                                          .toString();
                                                      //s8=s7.toString();
                                                      //int cv= int.parse(s8);
                                                      s9 = dec(s8, d, n)
                                                          .toString();
                                                      (context as Element)
                                                          .reassemble();
                                                    })),
                                          ),
                                          Container(
                                            height: 20,
                                            width: width,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Cyper text: " + s8,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            alignment: Alignment.topLeft,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 10),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                bottom: 0,
                                                left: 10,
                                                right: 0,
                                              ),
                                              child: Text(
                                                "Plain Text:" + s9,
                                                style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 15,
                                                    fontWeight: FontWeight.w700),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 100),
                                            alignment: Alignment.center,
                                            child: new Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.center,
                                                children: <Widget>[]),
                                          ),
                                        ]),
                                  ))),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),
          )
      )

    );
  }
}

String enc(String s, e, n) {
  String res = "";
  int cc;
  for (var i = 0; i < s.length; i++) {
    int cc = s[i].codeUnitAt(0);
    int cv = power(cc, e, n);
    var character = new String.fromCharCode(cv);
    res = res + character.toString();
    //res=res+s[i]+" "+cc.toString()+" "+cv.toString()+"|";
  }
  return res;
}

String dec(String sss, dddd, nnn) {
  String ress = "";
  int cc;
  for (var i = 0; i < sss.length; i++) {
    int cc = sss[i].codeUnitAt(0);
    int cv2 = power(cc, dddd, nnn);
    var character = new String.fromCharCode(cv2);
    ress = ress + character.toString();

    //ress=ress+sss[i]+" "+cc.toString()+" "+cv2.toString()+"|";
  }
  return ress;
}

_onAlertButtonPressed(context) {
  Alert(
    context: context,
    type: AlertType.error,
    title: "ALERT",
    desc: "Either P or Q is not prime number. Please check",
  ).show();
}

int power(int x, int y, int p) {
  int res = 1; // Initialize result

  x = x % p; // Update x if it is more than or
// equal to p

  if (x == 0) return 0; // In case x is divisible by p;

  while (y > 0) {
// If y is odd, multiply x with result
    if (y % 2 != 0) res = (res * x) % p;

// y must be even now
    y = y >> 1; // y = y/2
    x = (x * x) % p;
  }
  return res;
}

var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
bool isPrime(x) {
  if (x <= 1) return false;
  for (var i = 2; i < x; ++i) {
    if (x % i == 0) return false;
  }
  return true;
}

int gcd(a, b) {
  if (b == 0) return a;
  return gcd(b, a % b);
}
