import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/providers/box_data.dart';

class TicBox extends StatelessWidget {
  final int tp, id;
  Color clr = Colors.white;

  TicBox(this.tp, this.id, {Key? key}) : super(key: key);

  void changeColor() {
    if (tp == 0) {
      clr = Colors.red;
    } else if (tp == 1) {
      clr = Colors.yellow;
    } else {
      clr = Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    changeColor();
    final data = Provider.of<BoxData>(context, listen: false);
    return GestureDetector(
      onTap: () {
        data.changeData(id);
      },
      child: Container(
        width: 10,
        height: 10,
        color: clr,
        margin: EdgeInsets.all(3),
      ),
    );
  }
}

// class TicBox extends StatefulWidget {
//   int tp, id;
//   Color clr = Colors.white;
//
//   TicBox(this.tp, this.id, {Key? key}) : super(key: key);
//
//   @override
//   State<TicBox> createState() => _TicBoxState();
// }
//
// class _TicBoxState extends State<TicBox> {
//   void changeColor() {
//     if (widget.tp == 0) {
//       widget.clr = Colors.red;
//     } else if (widget.tp == 1) {
//       widget.clr = Colors.yellow;
//     } else {
//       widget.clr = Colors.black;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     changeColor();
//     final data = Provider.of<BoxData>(context, listen: false);
//     return GestureDetector(
//       onTap: () {
//         print("tapped");
//         data.changeData(widget.id);
//       },
//       child: Container(
//         width: 10,
//         height: 10,
//         color: widget.clr,
//         margin: EdgeInsets.all(3),
//       ),
//     );
//   }
// }
