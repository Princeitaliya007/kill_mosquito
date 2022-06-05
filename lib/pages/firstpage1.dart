import 'dart:math';
import 'package:flutter/material.dart';
import 'package:killmosquito/pages/class.dart';
import 'package:killmosquito/pages/variable.dart';
import 'class.dart';
import 'list.dart';

class FirstPage1 extends StatefulWidget {
  const FirstPage1({Key? key}) : super(key: key);

  @override
  _FirstPage1State createState() => _FirstPage1State();
}

class _FirstPage1State extends State<FirstPage1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: killmosquito.map((e) => Start(e)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget Start(Mosquito e) {
    return (e.againpressimg == false)
        ? InkWell(
            onTap: () {
              setState(() {
                if (i == 10) {
                  Navigator.of(context).pushNamed("firstlevel", arguments: e);
                }
                i++;
                e.topval = random.nextInt(600).toDouble();
                e.leftval = random.nextInt(300).toDouble();
                Varifier();
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 200,
              child: Text(
                "$level",
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage("assets/images/button.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        : Container();
  }
}

Varifier(){
  for(int i = 0; i<killmosquito.length; i++){
    for(int j = 0; j<killmosquito.length; j++){
      if(i != j){
        if(killmosquito[i].topval == killmosquito[j].topval && killmosquito[i].leftval == killmosquito[j].leftval){
          killmosquito[i].topval = random.nextInt(600).toDouble();
          killmosquito[i].leftval = random.nextInt(300).toDouble();
          Varifier();
        }
      }
    }
  }
}
