import 'package:flutter/material.dart';
import 'package:killmosquito/pages/variable.dart';
import '../list.dart';

class SecondLevel extends StatefulWidget {
  const SecondLevel({Key? key}) : super(key: key);

  @override
  _SecondLevelState createState() => _SecondLevelState();
}

class _SecondLevelState extends State<SecondLevel> {
  @override
  Widget build(BuildContext context) {

    dynamic mos = ModalRoute.of(context)!.settings.arguments;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/button.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Stack(
              children: killmosquito.map((mos) => mosquito(mos)).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget mosquito(e) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (e.pressimg == true) {
            index++;
          }
          if (index == 10) {
            index = 0;
            Navigator.of(context).pushNamed("winpage");
          }
          e.pressimg = false;
        });
      },
      child: Container(
        margin:  EdgeInsets.only(top: e.topval, left: e.leftval),
        height: 70,
        width: 70,
        child: (e.pressimg)
            ? Image.asset(
          "assets/images/mosquito.png",
          height: 50,
        )
            : Image.asset(
          "assets/images/killedmosquito.png",
          height: 50,
        ),
      ),
    );
  }
}
