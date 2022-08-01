import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/providers/box_data.dart';

class WinPage extends StatelessWidget {
  WinPage({Key? key}) : super(key: key);
  String routname = '/winPage';

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<BoxData>(context, listen: false);
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          data.draw == false
              ? Text(
                  "${data.whoWon == 1 ? "X" : "O"} WON!",
                  style: const TextStyle(
                      color: Color(0xfffdfcfc),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                )
              : const Text(
                  "DRAW!",
                  style: TextStyle(
                      color: Color(0xfffdfcfc),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.black,
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15)
            ),
            onPressed: () {
              data.reset();
            },
            child: const Text(
              "PLAY AGAIN",
              style: TextStyle(
                  color: Color(0xfffdfcfc),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
