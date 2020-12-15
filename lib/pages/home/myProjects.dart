import 'package:flutter/material.dart';
import 'package:portfolio/styles/textsyles.dart';
import 'dart:html' as html;

class MyProjects extends StatefulWidget {
  MyProjects({Key key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.blueGrey[900],
      child: Container(
        padding: EdgeInsets.only(
          top: 5,
          left: 5,
          right: 5,
        ),
        height: 280,
        width: 500,
        color: Colors.blueGrey[900],
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '  PROJECTS',
                style: projectsContainer_style,
              ),
            ),
            SizedBox(height: 15),
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://github.com/feliper2002/pokedex-flutter-api',
                          'Pokédex');
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Card(
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 130,
                              child: Text(
                                'Uma aplicação que simula uma Pokédex, '
                                'tendo como principal recurso, o método de requisição http para chamada da API de Pokémon.',
                                textAlign: TextAlign.start,
                                style: projectsCardAboutTextStyle,
                              ),
                            ),
                            Text(
                              'POKÉDEX',
                              style: projectCard_style,
                            ),
                          ],
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://github.com/feliper2002/Projetos-Flutter/tree/main/jokenpo_app',
                          'JoKenPo');
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Card(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              Container(
                                height: 160,
                                width: 130,
                                child: Text(
                                  'Jogue Pedra, Papel & Tesoura contra seu próprio celular!'
                                  ' Ganha a partida quem atingir um máximo de 10 pontos!',
                                  textAlign: TextAlign.start,
                                  style: projectsCardAboutTextStyle,
                                ),
                              ),
                              Text(
                                'JoKenPo',
                                style: projectCard_style,
                              ),
                            ],
                          ),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      html.window.open(
                          'https://github.com/feliper2002/Projetos-Flutter/tree/main/freelance_hour_calculator',
                          'Freelance Hour Calculator');
                    },
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Card(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            children: [
                              Container(
                                height: 160,
                                width: 130,
                                child: Text(
                                  'Calcule o valor/hora do seu projeto Freelance baseado nas '
                                  'horas trabalhadas, dias dedicados, valor total e dias de férias!',
                                  textAlign: TextAlign.start,
                                  style: projectsCardAboutTextStyle,
                                ),
                              ),
                              Text(
                                'Freelance Hour',
                                style: projectCard_style,
                              ),
                            ],
                          ),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Card(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '(other)',
                            style: projectCard_style,
                          ),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 200,
                      width: 150,
                      child: Card(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            '(other)',
                            style: projectCard_style,
                          ),
                        ),
                        elevation: 5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
