import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp()
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState() => _QuizAppState();
  
}

class _QuizAppState extends State{
  List<Map> allQuestions =[
  {
    "question": "Who is the founder of Microsoft?",
    "options":["Steve Jobs","Bill Gates","Lary Page","Elon musk"],
    "correctAnswer": 1
  },
  {
    "question": "Who is the founder of Google?",
    "options":["Steve Jobs", "Bill Gates","Lary Page","Elon musk"],
    "correctAnswer": 2
  },
  {
     "question": "Who is the founder of Spacex?",
     "options":["Steve Jobs","Bill Gates", "Lary Page", "Elon musk"],
     "correctanswer": 3
  },
  {
     "question": "Who is the founder of Apple?",
     "options": ["Steve Jobs", "Bill Gates", "Lary Page", "EIon musk"],
     "correctAnswer":0
  },

  {

     "question": "Who is the founder of Meta?",
     "options":["Steve Jobs", "Mark Zuckerberg", "Lary Page","Elon musk"],
     "correctAnswer":1
  },   

  ];

  int currentQuestionIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.orange,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),

       body: Column(
        children: [
           const SizedBox(
            height: 30,
           ),
           Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                  Text(
                    "Question :${currentQuestionIndex+1}/ ${allQuestions.length}",
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
              ],
           ),


                  const SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                        width: 380,
                        height: 50,
                        child: Text(
                          allQuestions[currentQuestionIndex]["question"],
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                        ),
                  ),

                  const SizedBox(
                    height: 50,
                  ),

                  SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                            
                          child: Text(
                          allQuestions[currentQuestionIndex]['options'][0],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                          ),
                        ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                            
                          child: Text(
                          allQuestions[currentQuestionIndex]["options"][1],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                          ),
                        ),
                  ),

                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                            
                          child: Text(
                          allQuestions[currentQuestionIndex]["options"][2],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                          ),
                        ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {},
                            
                          child: Text(
                          allQuestions[currentQuestionIndex]["options"][3],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.purple,
                          ),
                          ),
                        ),
                  ),
           
        ],

           ),    
         floatingActionButton: FloatingActionButton(
           onPressed: () {
             if(currentQuestionIndex< allQuestions.length){
               currentQuestionIndex++;
               setState(() {});
             }
           },
           backgroundColor: Colors.blue,
           child: const Icon(
             Icons.forward,
             color: Colors.orange,
           ),
          
         ),

       );
    
  }
   


}
