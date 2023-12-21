import 'package:flutter/material.dart';

import 'mainpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: const BoxDecoration(
          color: const Color.fromARGB(255, 152, 214, 245),
          image: DecorationImage(
            image: AssetImage("assets/winter2.jpg"),
            fit: BoxFit.cover,
          ),),
        child: Column(children:[SizedBox(height: 200,),
          
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => mainpage()));
              },
              child: Text('TIME FOR A MISCHIEF!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            ),
        ]
        ),
      ),
    );
  }
}


