import 'package:flutter/material.dart';
import 'package:portfolio/models/projects/projectCards.dart';
import 'package:portfolio/styles/textsyles.dart';

class MyProjects extends StatefulWidget {
  MyProjects({Key key}) : super(key: key);

  @override
  _MyProjectsState createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Card(
      // shadowColor: Theme.of(context).shadowColor,
      // elevation: 5,
      color: Theme.of(context).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.only(
          top: 5,
          left: 5,
          right: 5,
        ),
        height: 280,
        width: 700,
        // color: Colors.blueGrey[900],
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
                  ProjectCard(
                    projectDescription: 'Uma aplicação que simula'
                        ' uma Pokédex do anime Pokémon. Esse foi o primeiro projeto utilizando consumo de API.',
                    projectName: 'Pokédex',
                    projectUrl:
                        'https://github.com/feliper2002/pokedex-flutter-api',
                    cardColor: Colors.red[400],
                    cardShadowColor: Colors.green,
                    projectImage:
                        Image.asset('lib/assets/images/icon_pokedex.png'),
                    usedTechnologies: 'Flutter',
                  ),
                  ProjectCard(
                    projectDescription:
                        'Jogue o famoso jogo "Pedra Papel e Tesoura" contra '
                        'o seu próprio celular!'
                        ' Ganha quem chegar primeiro aos 10 pontos!',
                    projectName: 'JoKenPo',
                    projectUrl:
                        'https://github.com/feliper2002/Projetos-Flutter/tree/main/jokenpo_app',
                    cardColor: Colors.orange[400],
                    cardShadowColor: Colors.green,
                    usedTechnologies: 'Flutter',
                  ),
                  ProjectCard(
                    projectDescription:
                        'O Anime List é um app para você guardar os animes que você está assistindo,'
                        ' podendo registrar seus stats em relação ao mesmo!',
                    projectName: 'Anime List',
                    projectUrl: 'https://github.com/feliper2002/Anime-List',
                    cardColor: Colors.blue[900],
                    cardShadowColor: Colors.green,
                    usedTechnologies: 'Flutter',
                  ),
                  ProjectCard(
                    projectDescription:
                        'Esse site foi desenvolvido com o Flutter Web!'
                        ' O site estará em constante atualização para adição de projetos.',
                    projectName: 'Portfólio',
                    projectUrl:
                        'https://github.com/feliper2002/felipe.developer',
                    cardColor: Colors.blueAccent[400],
                    cardShadowColor: Colors.green,
                    usedTechnologies: 'Flutter Web',
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
