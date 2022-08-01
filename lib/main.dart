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
    return ChangeNotifierProvider.value(
      value: BoxData(),
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const MyHomePage(),
        routes: {
          WinPage().routname: (context) => WinPage(),
        },
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final data = Provider.of<BoxData>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff212020),
          title: const Text(
            "Tic Tac Toe",
            style: TextStyle(
                color: Color(0xfffdfcfc),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  data.reset();
                },
                icon: const Icon(Icons.refresh))
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 40),
          color: const Color(0xff212020),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const BoxGrid(),
              data.won == false
                  ? Text(
                      "Turn of ${data.turn == 1 ? "X" : "O"}",
                      style: const TextStyle(
                          color: Color(0xfffdfcfc),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    )
                  : const Text(""),
            ],
          ),
        ),
      ),
    );
  }
}
