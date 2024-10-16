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
          title: const Text("listview",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: Colors.amber,
          ),
          ),
        ),
        body: ListView(
          children: [
            Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),
            const Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const Text("Bhari",
            style: TextStyle(
              fontWeight:FontWeight.w400,
              fontSize: 22,
              color: Colors.red,
            ),
            ),

            Image.network("https://phlearn.com/wp-content/uploads/2019/03/fixed-ratio.png"),

            GestureDetector(
              onTap: (){
                print("Button Submitted...!");
              },
              child: Container(
                height: 50,
                color: Colors.grey,
                child: const Text("Press Me",
                
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
