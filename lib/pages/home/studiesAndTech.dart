import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class StudiesAndTechnology extends StatefulWidget {
  StudiesAndTechnology({Key key}) : super(key: key);

  @override
  _StudiesAndTechnologyState createState() => _StudiesAndTechnologyState();
}

class _StudiesAndTechnologyState extends State<StudiesAndTechnology> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 5,
        child: Container(
          color: Colors.white,
          height: 500,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      AssetImage('lib/assets/images/profilepic.jpg'),
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
                      Text('☕'),
                      SizedBox(height: 16),
                      Container(
                        height: 180,
                        width: 450,
                        child: Text(
                          'Estudante de Engenharia de Controle e Automação.\n'
                          'Estudando Desenvolvimento Mobile com Flutter desde outubro de 2020.\n'
                          'Experiência com Python, C e C++. Porém, atualmente meu foco está sendo em dominar Dart.\n'
                          'No tempo livre gosto de trabalhar em projetos pessoais utilizando o Flutter para colocar conhecimentos em prática.',
                          style: mainContainerTextStyle,
                        ),
                      ),
                      SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                      'https://github.com/feliper2002',
                                      'feliper2002',
                                    );
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/icons/github.png'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'GITHUB',
                                  style: flutterDev_style,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                      'https://instagram.com/felipe.developer/',
                                      'felipe.developer',
                                    );
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'lib/assets/icons/instagram.webp'),
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'INSTAGRAM',
                                  style: flutterDev_style,
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {
                                    html.window.open(
                                      'https://www.linkedin.com/in/felipe-azevedo-ribeiro/',
                                      'Felipe Azevedo Ribeiro',
                                    );
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    child: Text(
                                      'in',
                                      style: linkedinStyle,
                                    ),
                                  ),
                                ),
                                Text(
                                  'LINKEDIN',
                                  style: flutterDev_style,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
