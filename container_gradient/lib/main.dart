import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  
  @override
  State createState() => _MainAppState();
  
}

class _MainAppState extends State{
  TextEditingController namecontroller = TextEditingController();
  String? name;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home: Scaffold(
        appBar: AppBar(
          title: const Text("TextField Demo",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w300,
            color: Colors.amber,
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Column(
          children: [

           const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: namecontroller,
              style: const TextStyle(
                fontSize: 22,
              ),
              obscureText: true,
              decoration: const InputDecoration(
                suffixIcon: Icon(Icons.visibility),
                hintText: "Enter Name",
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Colors.grey,
                ),
                border: OutlineInputBorder(),
              ),

              onChanged: (String val){
                print("Value $val");
              },

              onEditingComplete: (){
                print("Editing Completed");
              },

              onSubmitted: (value){
                print("value Submited: $value");
              },
            ),
            ),

            const SizedBox(
              height: 20,
            ),

            GestureDetector(
              onTap: (){
                print("Add Data");
                name = namecontroller.text;
                print("My name : $name");
                namecontroller.clear();
                setState(() {
                  
                });
              },
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),

                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Text(
                  "Add Data",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,

            ),
            Text(
              "Name : $name",
              style: const TextStyle(
                fontSize: 20,
              ),
            )
          ]
           
          
        ),
        
       ),
    );
  }
}
