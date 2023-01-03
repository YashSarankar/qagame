import 'package:flutter/material.dart';
import 'package:qagame/data/question_list.dart';

void main() {
  runApp(const MyAPP());
}

class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color mainColor = Color(0xFF25c4a);
  Color secondColor = Color(0xFF117eeb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: PageView.builder(
            itemCount: questions.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: double.infinity,
                  ),
                  Text(
                    "Question ${index + 1}/${questions.length}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 28.0),
                  ),
                 const Divider(
                    color: Colors.white,
                    height: 8.0,
                    thickness: 1.0,
                  )
                ],
              );
            }),
      ),
    );
  }
}
