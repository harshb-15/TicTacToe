import 'package:flutter/material.dart';
import 'package:tictactoe/providers/box_data.dart';
import 'package:tictactoe/widgets/box_grid.dart';
import 'package:provider/provider.dart';
import 'package:tictactoe/pages/win.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(),
      routes: {
        WinPage().routname: (context) => WinPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ChangeNotifierProvider.value(
        value: BoxData(),
        child: Scaffold(
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("Tic Tac Toe"), BoxGrid()],
            ),
          ),
        ),
      ),
    );
  }
}
