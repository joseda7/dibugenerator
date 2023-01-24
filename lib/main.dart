import 'package:english_words/english_words.dart';
import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Startup Name Generator',
      home: RandomGenPage(),
    );
  }
}

class RandomGenPage extends StatefulWidget {
  const RandomGenPage({ Key? key }) : super(key: key);
  @override
  _RandomGenPageState createState() => _RandomGenPageState();
}

class _RandomGenPageState extends State<RandomGenPage> {
  @override
  List<String> randomWords = ['?', '?', '?'];
  final arrList = nouns;
  Widget build(BuildContext context) {  
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Dibugenerator v1.0'),
          )
        ),
        body: Center( 
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Generate random words, choose an option and draw"),
              Divider(
                height: 100,
              ),
              Text('$randomWords'.toUpperCase()),
              Divider(
                height: 100,
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {  
                    randomWords[0] = arrList[Random().nextInt(arrList.length)].toString();
                    randomWords[1] = arrList[Random().nextInt(arrList.length)].toString();
                    randomWords[2] = arrList[Random().nextInt(arrList.length)].toString();
                  });
                }, 
                child: Text("Generate".toUpperCase()),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                ) 
              ),
            ],
          ) 
        ),
      ),
    );
  }
}






