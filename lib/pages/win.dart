import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/providers/box_data.dart';

class WinPage extends StatelessWidget {
  WinPage({Key? key}) : super(key: key);
  String routname = '/winPage';

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<BoxData>(context, listen: false);
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("${data.whoWon == 1 ? "Yellow" : "Red"} won"),
          ElevatedButton(
            onPressed: () {
              data.reset();
            },
            child: Text("Play again"),
          )
        ],
      ),
    );
  }
}
