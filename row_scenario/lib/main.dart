import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Row Scenario",
          style: TextStyle(
            fontWeight:FontWeight.w400,
            fontSize: 22,
            color: Colors.amber,
          ),
          ),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
