import 'dart:math';

import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:exam/ui/thirdpage/third_page_info.dart';
import 'package:flutter/material.dart';

class GamePageForPlayer extends StatefulWidget {
  Color color;
  String name;
  GamePageForPlayer(this.name, this.color);

  @override
  _GamePageForPlayerState createState() => _GamePageForPlayerState();
}

class _GamePageForPlayerState extends State<GamePageForPlayer> {
  int computerNum = (Random().nextInt(2) + 1);
  List<String> lstBu = ["Rock", "Paper", "Scissor"];
  String? computerString;

  int number = 0;
  String? userIcon;
  @override
  Widget build(BuildContext context) {
    computerString = functionBu(computerNum, lstBu);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.color,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InformationPage(),
                ),
              );
            },
            icon: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
      body: Container(
        color: widget.color,
        child: Stack(
          children: [
            Positioned(
              left: 100.0,
              top: 70.0,
              child: Text(
                "Computer",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              top: 100.0,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.redAccent,
                  child: Text("Rock"),
                ),
              ),
            ),
            Positioned(
              left: 150.0,
              top: 120.0,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.yellowAccent,
                  child: Text("Paper"),
                ),
              ),
            ),
            Positioned(
              left: 270.0,
              top: 140.0,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.greenAccent,
                  child: Text("Scissors"),
                ),
              ),
            ),
            Positioned(
              top: 225.0,
              child: Container(
                height: 450.0,
                width: 500.0,
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      color: Colors.greenAccent,
                      child: Text(
                        functionBu(
                          computerNum,
                          lstBu,
                        ),
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: CircleAvatar(
                        radius: 80.0,
                        backgroundImage: AssetImage(
                          "assets/images/vs.jpeg",
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.deepOrange,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Text(
                        userIcon.toString(),
                        style: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30.0,
              bottom: 100.0,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.redAccent,
                  child: Text("Rock"),
                ),
                onTap: () {
                  setState(() {
                    number = 1;
                    userIcon = "Rock";
                    functionForWin();
                  });
                },
              ),
            ),
            Positioned(
              left: 150.0,
              bottom: 120.0,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.yellowAccent,
                  child: Text("Paper"),
                ),
                onTap: () {
                  setState(() {
                    number = 2;
                    userIcon = "Paper";
                    functionForWin();
                  });
                },
              ),
            ),
            Positioned(
              left: 270.0,
              bottom: 140.0,
              child: InkWell(
                child: CircleAvatar(
                  radius: 40.0,
                  backgroundColor: Colors.greenAccent,
                  child: Text("Scissors"),
                ),
                onTap: () {
                  setState(() {
                    number = 3;
                    userIcon = "Scissors";
                    functionForWin();
                  });
                },
              ),
            ),
            Positioned(
              left: 150.0,
              bottom: 200.0,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.brown,
                ),
                onPressed: () {},
                child: Text("Men tanladim"),
              ),
            ),
            Positioned(
              bottom: 80.0,
              left: 100.0,
              child: Text(
                widget.name.toString(),
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  functionBu(int index, List<String> lst) {
    return computerString = lst[index];
  }

  functionForWin() {
    if (userIcon == "Rock" && computerString == "Rock") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "Durrang",
        desc: "Kuchlar teng keldi",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Paper" && computerString == "Paper") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "Durrang",
        desc: "Kuchlar teng keldi",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Scissors" && computerString == "Scissors") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "Durrang ",
        desc: "Kuchlar teng keldi",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Rock" && computerString == "Paper") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "Computer g'alaba qozondi",
        desc: "Afsuski",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Rock" && computerString == "Scissors") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "${widget.name} G'alaba qozondi",
        desc: "Tabriklayman",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Paper" && computerString == "Rock") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "Computer g'alaba qozondi",
        desc: "Afsuski",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Scissors" && computerString == "Paper") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "${widget.name} G'alaba qozondi",
        desc: "Tabriklayman",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    } else if (userIcon == "Scissors" && computerString == "Rock") {
      AwesomeDialog(
        context: context,
        dialogType: DialogType.SUCCES,
        animType: AnimType.TOPSLIDE,
        title: "Computer g'alaba qozondi",
        desc: "Afsuski",
        btnCancelOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
        btnOkOnPress: () {
          setState(() {
            computerNum = (Random().nextInt(2) + 1);
          });
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) =>
                  GamePageForPlayer(widget.name, widget.color),
            ),
          );
        },
      )..show();
    }
  }
}
