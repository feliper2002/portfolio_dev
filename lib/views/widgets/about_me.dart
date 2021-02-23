import 'package:feliper_developer/shared/styles/textStyles.dart';
import 'package:flutter/material.dart';

class AboutMe extends StatelessWidget {
  final bool mobile;

  AboutMe({this.mobile});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Sobre mim', style: !mobile ? infoStyle : infoStyleMobile),
          Divider(
            thickness: 3,
            color: Colors.blue,
            indent: 0,
            endIndent: constraints.maxWidth * .6,
          ),
          Column(
            children: [
              SizedBox(height: 16),
              Row(
                children: [
                  Icon(Icons.person, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    '19 anos',
                    style: !mobile ? infoStyle : infoStyleMobile,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  children: [
                    FlutterLogo(size: 20),
                    SizedBox(width: 4),
                    Text(
                      'Flutter Developer',
                      style: !mobile ? infoStyle : infoStyleMobile,
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Icon(Icons.work, color: Colors.white),
                  SizedBox(width: 4),
                  Text(
                    'Engenharia de Computação',
                    style: !mobile ? infoStyle : infoStyleMobile,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
