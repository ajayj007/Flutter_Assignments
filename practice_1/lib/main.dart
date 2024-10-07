import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppState();
  
  }

class _MyAppState extends State{
  
  @override
  Widget build(BuildContext context){
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  Scaffold(
      appBar: AppBar(
        title: const Text("Shoes",
        style: TextStyle(
          color: Colors.purple,
          fontWeight: FontWeight.w400,
          fontSize: 28,
        ),
        ),
      ),
      body:  Column(
          children: [
             
              
              Container(
                height: 350,
                width: 500,
                color: Colors.red,

                child:  Image.network("https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                
                fit: BoxFit.cover,
               ),
              ),

               const SizedBox(
                  height: 30,
               ),
               
              const Row(
                children: [
                  Text("Nike Air Force 1 07",
                  
                  style: TextStyle(
                  
                   fontSize: 28,
                   fontWeight: FontWeight.bold,
                   color: Colors.black, 
                  ),
                  ),
                ],
               ),

               const SizedBox(
                height: 30,
               ),

              Row(
                    children: [
                     ElevatedButton(
                      onPressed:() {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),

                      ),

                      
                      
                      child: const Text("Shoes"),
                     ),

                     const SizedBox(
                        width: 30,
                      ),

                     ElevatedButton(
                      onPressed:() {},
                      style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.blue),

                      ),
                      child: const Text("Footwear",
                      ) ,
                     ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  const SizedBox(
                    child:  Text("India is a land of various cultures and a rich heritage. It is the seventh-largest country by area and the second-most populous country globally. The peacock is India’s national bird, and the Bengal tiger is the country’s national animal. The national song is named Vande Matram (written by Bankimchandra Chatterji)."),
                  ),
                  
                   const SizedBox(
                    height: 30,
                  ),

                   Center(
                    child: ElevatedButton(
                           onPressed: () {}, 
                           style: ButtonStyle(
                           backgroundColor: WidgetStatePropertyAll(Colors.blue),

                      
                           
                       ),
                          child: Text("Purchase"),
                    ),
                  ),

          ],
      ) ,
    ),
    );
  }

}
