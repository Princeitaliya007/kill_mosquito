import 'package:flutter/material.dart';
import 'package:killmosquito/pages/variable.dart';
import '../list.dart';

class FirstLevel extends StatefulWidget {
  const FirstLevel({Key? key}) : super(key: key);

  @override
  _FirstLevelState createState() => _FirstLevelState();
}

class _FirstLevelState extends State<FirstLevel> {
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
            (isant)
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.of(context).pushNamed("losepage");
                      });
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/antimg.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                : Container(),
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
          e.pressimg = false;
          if (index == 10) {
            Navigator.of(context).pushNamed("winpage");
            for (int i = 0; i < killmosquito.length; i++) {
              killmosquito[i].pressimg = true;
              killmosquito[i].againpressimg = false;
            }
            index = 0;
            i = 0;
            third++;
            if (third == 3) {
              isant = true;
            }
          }
        });
        print(third);
      },
      child: Container(
        margin: EdgeInsets.only(top: e.topval, left: e.leftval),
        height: 70,
        width: 70,
        child: (e.pressimg == true)
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
