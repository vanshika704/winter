import 'package:flutter/material.dart';

class mainpage extends StatefulWidget {
  const mainpage({Key? key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 2, 29, 51),
          title: const Text(
            "Touch the boy with cold hands",
            style: TextStyle(color: Colors.white,height: 0.9
            ,)
            ,
          ),
        ),
        body: Boy());
  }
}

class Boy extends StatefulWidget {
  const Boy({Key? key});

  @override
  State<Boy> createState() => _BoyState();
}

class _BoyState extends State<Boy> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 500.0,
        height: 500.0,
        color: Colors.transparent,
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selected = !selected;
                });
              },
              child: Container(
                width: 360.0,
                height: 1900.0,
                color: Color.fromARGB(255, 129, 234, 241),
                child: AnimatedAlign(
                  alignment:
                      selected ? Alignment.center : Alignment.topLeft,
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastOutSlowIn,
                  child: selected
                      ? Image.asset('assets/boy.jpg')
                      : const SizedBox(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
