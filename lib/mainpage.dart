import 'package:flutter/material.dart';
import 'box.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int player = 0;
  int moves = 0;
  Color rang1 = Colors.black;
  Color rang2 = Colors.black;
  void checkRang() {
    if (player == 1) {
      rang1 = Colors.grey;
      rang2 = Colors.black;
    } else if (player == 0) {
      rang1 = Colors.black;
      rang2 = Colors.grey;
    } else {
      rang2 = Colors.grey;
      rang1 = Colors.black;
    }
  }

  String initialText = 'Welcome to TicTacToe';
  void WinText() {
    initialText = 'Previous game won by player $player';
    player = 0;
    moves = 0;
    boxClick = 0;
    optionCheck = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '];
  }

  int checkBoxNum(int boxNum) {
    if (boxNum == boxClick) {
      return 1;
    } else {
      return 0;
    }
  }

  String check(int boxNum) {
    int result = checkBoxNum(boxNum);
    if (result == 1) {
      if (player == 1) {
        optionCheck[boxNum - 1] = 'X';
        Win();
        return 'X';
      } else if (player == 2) {
        optionCheck[boxNum - 1] = 'O';
        Win();
        return 'O';
      } else {
        return ' ';
      }
    } else {
      return optionCheck[boxNum - 1];
    }
  }

  void DrawText() {
    initialText = 'Last Game resulted in a TIE';
    player = 0;
    moves = 1;
    boxClick = 0;
    optionCheck = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '];
  }

  int Win() {
    if (moves >= 6) {
      if (optionCheck[0] == optionCheck[1] &&
          optionCheck[1] == optionCheck[2] &&
          optionCheck[0] != ' ') {
        print('Yeh wala 1');
        WinText();
        return 1;
      } else if (optionCheck[3] == optionCheck[4] &&
          optionCheck[4] == optionCheck[5] &&
          optionCheck[3] != ' ') {
        print('Yeh wala 2');
        WinText();

        return 1;
      } else if (optionCheck[6] == optionCheck[7] &&
          optionCheck[7] == optionCheck[8] &&
          optionCheck[6] != ' ') {
        print('Yeh wala 3');
        WinText();
        return 1;
      } else if (optionCheck[0] == optionCheck[3] &&
          optionCheck[3] == optionCheck[6] &&
          optionCheck[0] != ' ') {
        print('Yeh wala 4');
        WinText();
        return 1;
      } else if (optionCheck[1] == optionCheck[4] &&
          optionCheck[4] == optionCheck[7] &&
          optionCheck[7] != ' ') {
        print('Yeh wala 5');
        WinText();
        return 1;
      } else if (optionCheck[2] == optionCheck[5] &&
          optionCheck[5] == optionCheck[8] &&
          optionCheck[2] != ' ') {
        print('Yeh wala 6');
        WinText();
        return 1;
      } else if (optionCheck[0] == optionCheck[4] &&
          optionCheck[4] == optionCheck[8] &&
          optionCheck[0] != ' ') {
        print('Yeh wala 7');
        WinText();
        return 1;
      } else if (optionCheck[2] == optionCheck[4] &&
          optionCheck[4] == optionCheck[6] &&
          optionCheck[2] != ' ') {
        print('Yeh wala 8');
        WinText();
        return 1;
      } else {
        if (moves == 9) {
          print('Yeh wala 9');
          DrawText();
        }
        return 0;
      }
    } else {
      return 0;
    }
  }

  int boxClick = 0;
  List<String> optionCheck = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(initialText),
        backgroundColor: Colors.green,
      ),
      body: Container(
          color: Colors.greenAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    '         Player 1: X',
                    style: TextStyle(
                        color: rang1,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'Player 2: O         ',
                    style: TextStyle(
                        color: rang2,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (player == 1) {
                          player = 2;
                        } else {
                          player = 1;
                        }
                        boxClick = 1;
                        moves++;

                        print('Moves=$moves');
                        check(1);
                        checkRang();
                      });
                    },
                    child: Box(check(1)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (player == 1) {
                          player = 2;
                        } else {
                          player = 1;
                        }
                        boxClick = 2;
                        moves++;

                        print('Moves=$moves');
                        check(2);
                        checkRang();

                        //print(player);
                      });
                    },
                    child: Box(check(2)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (player == 1) {
                          player = 2;
                        } else {
                          player = 1;
                        }
                        boxClick = 3;
                        moves++;
                        print('Moves=$moves');
                        check(3);
                        checkRang();
                      });
                    },
                    child: Box(check(3)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (player == 1) {
                          player = 2;
                        } else {
                          player = 1;
                        }
                        boxClick = 4;
                        moves++;
                        print('Moves=$moves');
                        check(4);
                        checkRang();
                      });
                    },
                    child: Box(check(4)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (player == 1) {
                          player = 2;
                        } else {
                          player = 1;
                        }
                        boxClick = 5;
                        moves++;
                        print('Moves=$moves');
                        check(5);
                        checkRang();
                      });
                    },
                    child: Box(check(5)),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        if (player == 1) {
                          player = 2;
                        } else {
                          player = 1;
                        }
                        boxClick = 6;
                        moves++;
                        print('Moves=$moves');
                        check(6);
                        checkRang();
                      });
                    },
                    child: Box(check(6)),
                  )
                ],
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (player == 1) {
                        player = 2;
                      } else {
                        player = 1;
                      }
                      boxClick = 7;
                      moves++;
                      print('Moves=$moves');
                      check(7);
                      checkRang();
                    });
                  },
                  child: Box(check(7)),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (player == 1) {
                        player = 2;
                      } else {
                        player = 1;
                      }
                      boxClick = 8;
                      moves++;
                      print('Moves=$moves');
                      check(8);
                      checkRang();
                    });
                  },
                  child: Box(check(8)),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (player == 1) {
                        player = 2;
                      } else {
                        player = 1;
                      }
                      boxClick = 9;
                      moves++;
                      print('Moves=$moves');
                      check(9);
                      checkRang();
                    });
                  },
                  child: Box(check(9)),
                ),
              ]),
            ],
          )),
    );
  }
}
