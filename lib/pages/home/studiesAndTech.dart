import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/styles/textsyles.dart';

class StudiesAndTechnology extends StatefulWidget {
  StudiesAndTechnology({Key key}) : super(key: key);

  @override
  _StudiesAndTechnologyState createState() => _StudiesAndTechnologyState();
}

class _StudiesAndTechnologyState extends State<StudiesAndTechnology> {
  var profilePic = AssetImage('lib/assets/images/profilepic.jpg');

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        shadowColor: Colors.lightBlue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 5,
        child: Container(
          color: Colors.blueGrey[900],
          height: 500,
          width: 700,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: profilePic,
                ),
                SizedBox(height: 10),
                Center(
                  child: Column(
                    children: [
                      Text(
                        'Felipe Azevedo Ribeiro',
                        style: myName_style,
                      ),
                      Text(
                        'Flutter Developer',
                        style: flutterDev_style,
                      ),
                      Text('☕', style: TextStyle(fontSize: 18)),
                      SizedBox(height: 16),
                      Container(
                        height: 180,
                        width: 450,
                        child: Text(
                          'Estudante de Engenharia de Controle e Automação.\n'
                          'Estudando Desenvolvimento Mobile com Flutter desde outubro de 2020.\n'
                          'Experiência com Python, C e C++. Porém, atualmente meu foco está sendo em dominar Dart e Flutter.\n'
                          'No tempo livre gosto de trabalhar em projetos pessoais utilizando o Flutter para colocar conhecimentos em prática.',
                          style: mainContainerTextStyle,
                        ),
                      ),
                      SizedBox(height: 16),
                      // SocialMedias(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
