import 'package:flutter/material.dart';
import 'package:killmosquito/pages/variable.dart';

class WinPage extends StatefulWidget {
  const WinPage({Key? key}) : super(key: key);

  @override
  _WinPageState createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Image.asset("assets/images/winimg.png"),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "firstpage1");
                if(third == 2){
                  level = "Level 2";
                }
                if(third == 3){
                  level = "Level 3";
                }
              },
              child: Text("Next"),
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
