import 'package:flutter/material.dart';
import 'package:tictactoe/pages/win.dart';
import 'package:tictactoe/providers/box_data.dart';
import 'package:tictactoe/widgets/tic_box.dart';
import 'package:provider/provider.dart';

class BoxGrid extends StatelessWidget {
  const BoxGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final wholeData = Provider.of<BoxData>(context);
    final data = wholeData.data;
    // print(data);
    // print("Build Called");
    return wholeData.won == false
        ? GridView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemBuilder: (BuildContext context, int index) {
              return TicBox(data[index], index);
            },
          )
        : WinPage();
  }
}
