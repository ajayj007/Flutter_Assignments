import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Indian Flag",
      home: MyScreen(),
    );
  }
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Indian Flag"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
          
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Top stripe (Orange)
                Container(
                  width: 250,
                  height: 45,
                  color: Colors.orange,
                ),
                // Middle stripe (White with Ashoka Chakra)
                Container(
                  width: 250,
                  height: 45,
                  color: Colors.white,
                  child: Center(
                    child: Image.network(
                      "https://th.bing.com/th?id=OIP.3nftDdnLbMop6GQS78hK7gHaHa&w=250&h=250&c=8&rs=1&qlt=90&r=0&o=6&dpr=1.3&pid=3.1&rm=2",
                      width: 35,
                      height: 35,
                    ),
                  ),
                ),
                // Bottom stripe (Green)
                Container(
                  width: 250,
                  height: 45,
                  color: Colors.green,
                ),
              ],
            ),
            
            SizedBox(
            width: 250,
            child:Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:[
              Container(
                width: 5,
                height: 250, // Set height to match the flag height
                color: Colors.black,
              
              ),
            ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
