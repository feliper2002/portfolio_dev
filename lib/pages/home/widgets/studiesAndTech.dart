import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:portfolio/models/socialMedia/socialMedias.dart';
import 'package:portfolio/styles/textsyles.dart';

class StudiesAndTechnology extends StatefulWidget {
  StudiesAndTechnology({Key key}) : super(key: key);

  @override
  _StudiesAndTechnologyState createState() => _StudiesAndTechnologyState();
}

class _StudiesAndTechnologyState extends State<StudiesAndTechnology> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Theme.of(context).primaryColor,
      child: Container(
        height: 530,
        width: 700,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            children: [
              SizedBox(height: 105),
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
                    Text('☕💙', style: TextStyle(fontSize: 18)),
                    SizedBox(height: 16),
                    Container(
                      height: 200,
                      width: 525,
                      child: Text(
                        'Estudante de Engenharia de Controle e Automação.\n'
                        'Estudando Desenvolvimento Mobile com Flutter desde outubro de 2020.\n'
                        'Já tive contato com Python, C e C++. Porém, atualmente meu foco está sendo em dominar Dart e a framework Flutter.\n'
                        'No tempo livre gosto de trabalhar em projetos pessoais utilizando o Flutter para colocar conhecimentos em prática.'
                        '\nTambém estou me dedicando para aprender tecnologias de Gerenciamento de Estado, como o MobX.',
                        style: mainContainerTextStyle,
                      ),
                    ),
                    SizedBox(height: 22),
                    SocialMedias(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
