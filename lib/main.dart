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
  Color mainColor = const Color(0x0ff25c4a);
  Color secondColor = const Color(0xff117eeb);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: PageView.builder(
          itemCount: questions.length,
          itemBuilder: (context, index) {
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                    height: 30,
                    thickness: 1.0,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    questions[index].question,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 22,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: questions[index]
                        .options
                        .entries
                        .map(
                          (option) => ListTile(
                            onTap: () {
                              if (option.value == true) {
                                print("Right answer");
                              } else {
                                print("Wrong answer");
                              }
                            },
                            title: Text(option.key),
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
