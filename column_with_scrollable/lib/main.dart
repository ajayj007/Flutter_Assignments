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
          title: const Text("Scrollable Screen",
          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 22, color: Colors.green),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
          children: [
              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),

              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),

              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,

              ),
              Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),

              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
          ],
        ),
        ),
      ),
    );
  }
}
