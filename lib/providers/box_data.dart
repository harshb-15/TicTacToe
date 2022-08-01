import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
class BoxData with ChangeNotifier {
  List<int> _data = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
  int turn = 1;
  bool _won = false;
  int _whoWon = -1;
  bool _draw = false;

  void changeData(inx) {
    _data[inx] = turn;
    turn = turn == 1 ? 0 : 1;
    _won = checkWinner();
    notifyListeners();
  }

  void reset() {
    _data = [-1, -1, -1, -1, -1, -1, -1, -1, -1];
    turn = 1;
    _won = false;
    notifyListeners();
  }

  bool checkWinner() {
    bool won = false;
    if (_data[0] == _data[1] && _data[1] == _data[2] && _data[0] != -1) {
      won = true;
      _whoWon = _data[0];
    }
    if (_data[3] == _data[4] && _data[4] == _data[5] && _data[3] != -1) {
      won = true;
      _whoWon = _data[3];
    }
    if (_data[6] == _data[7] && _data[7] == _data[8] && _data[6] != -1) {
      won = true;
      _whoWon = _data[6];
    }
    if (_data[0] == _data[3] && _data[3] == _data[6] && _data[0] != -1) {
      won = true;
      _whoWon = _data[0];
    }
    if (_data[1] == _data[4] && _data[4] == _data[7] && _data[1] != -1) {
      won = true;
      _whoWon = _data[1];
    }
    if (_data[2] == _data[5] && _data[5] == _data[8] && _data[2] != -1) {
      won = true;
      _whoWon = _data[2];
    }
    if (_data[0] == _data[4] && _data[4] == _data[8] && _data[0] != -1) {
      won = true;
      _whoWon = _data[0];
    }
    if (_data[2] == _data[4] && _data[4] == _data[6] && _data[2] != -1) {
      won = true;
      _whoWon = _data[2];
    }
    bool draw = true;
    for (int i = 0; i < 9; i++) {
      if (_data[i] == -1) {
        draw = false;
        break;
      }
    }
    _draw = draw;
    if(draw==true)
      {
        won=true;
      }
    return won;
  }

  List<int> get data {
    return [..._data];
  }

  bool get won {
    bool idk = _won;
    return idk;
  }

  int get whoWon {
    int idk = _whoWon;
    return idk;
  }

  bool get draw {
    bool idk = _draw;
    return idk;
  }
}
