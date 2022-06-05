import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:killmosquito/pages/variable.dart';
import 'list.dart';

class LosePage extends StatefulWidget {
  const LosePage({Key? key}) : super(key: key);

  @override
  _LosePageState createState() => _LosePageState();
}

class _LosePageState extends State<LosePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/loseimg.png"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.of(context).pushNamed("firstpage1");
                  index= 0;
                  i = 1;
                  third = 1;
                  isant = false;
                  level = "Level 1";
                  for (int i = 0; i < killmosquito.length; i++) {
                    killmosquito[i].pressimg = true;
                    killmosquito[i].againpressimg = false;
                  }
                });
              },
              child: Text("Reset"),
            ),
          ],
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
