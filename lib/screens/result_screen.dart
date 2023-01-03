import 'package:flutter/material.dart';
import 'package:qagame/main.dart';

class ResultScreen extends StatefulWidget {
  final int score;
  const ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    // Color mainColor =  Color(0x0ff25c4a);
    // Color secondColor = Color(0xFF117eeb);
    return Scaffold(
      backgroundColor: const Color(0x0ff25c4a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Congratulation",
            style: TextStyle(
                color: Colors.white,
                fontSize: 38.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Text(
            "your score is :",
            style: TextStyle(
                color: Colors.white,
                fontSize: 28.0,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50.0,
          ),
          Text(
            "${widget.score}",
            style: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 80.0),
          ),
         const SizedBox(height: 60.0,),
          MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
          },
            elevation: 0,
            color: Colors.orange,textColor: Colors.white,
              child: const Text("Repeat the Quizz"),)
        ],
      ),
    );
  }
}
