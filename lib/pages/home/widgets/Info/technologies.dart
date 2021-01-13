import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';

class Technologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 8, right: 4, bottom: 18),
      height: 265,
      width: 339,
      child: Card(
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          margin: EdgeInsets.only(left: 40, right: 20),
          child: Column(
            children: [
              Text(
                'TECNOLOGIAS',
                textAlign: TextAlign.center,
                style: techStyle,
              ),
              Divider(
                height: 3,
                thickness: 2,
                color: Colors.white,
                indent: 30,
                endIndent: 30,
              ),
              SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlutterLogo(size: 50),
                  DartIcon(),
                  MobXIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MobXIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'lib/assets/images/mobx.png',
        fit: BoxFit.contain,
        height: 50,
      ),
    );
  }
}

class DartIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
        'lib/assets/images/dart.png',
        fit: BoxFit.contain,
        height: 50,
      ),
    );
  }
}
