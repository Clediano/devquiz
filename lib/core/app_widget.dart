import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DevQuiz",
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text("DevQuiz"),
        ),
        body: Container(
          color: Colors.black12,
          child: Center(
            child: Text("Conteúdo"),
          ),
        ),
      ),
    );
  }
}
