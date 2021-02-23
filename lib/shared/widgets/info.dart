import 'package:feliper_developer/shared/styles/textStyles.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;

myInfo(BoxConstraints constraints, {bool mobile}) => Container(
      padding: EdgeInsets.only(top: 20, right: 30),
      height: !mobile ? constraints.maxHeight * .7 : constraints.maxHeight * .7,
      width: !mobile ? constraints.maxWidth * .3 : constraints.maxWidth * .97,
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(
              width: mobile ? 6 : 1,
              color: mobile ? Colors.transparent : Colors.transparent),
        ),
      ),
      child: Column(
        children: [
          Text(
            'Estudante de Engenharia de Computação.\n',
            style: mobile ? descStyleMobile : descStyle,
            textAlign: TextAlign.justify,
          ),
          Text(
            'Estudando Desenvolvimento Mobile com Flutter desde outubro de 2020.\n',
            style: mobile ? descStyleMobile : descStyle,
            textAlign: TextAlign.justify,
          ),
          Text(
            'Já tive contato com Python, C e C++. Porém, atualmente meu foco está sendo em dominar Dart e a framework Flutter.\n',
            style: mobile ? descStyleMobile : descStyle,
            textAlign: TextAlign.justify,
          ),
          Text(
            'No tempo livre gosto de trabalhar em projetos pessoais utilizando o Flutter para colocar conhecimentos em prática.\n',
            style: mobile ? descStyleMobile : descStyle,
            textAlign: TextAlign.justify,
          ),
          Text(
            '\nTambém estou me dedicando para estudar tecnologias como Slidy (CLI), MobX e Modular.\n',
            style: mobile ? descStyleMobile : descStyle,
            textAlign: TextAlign.justify,
          ),
          ListTile(
            title: Text(
              'Contato',
              style: mobile ? descStyleMobile : descStyle,
              textAlign: TextAlign.justify,
            ),
            subtitle: InkWell(
              onTap: () {
                html.window.open('mailto:feliper.dev@gmail.com', 'mail');
              },
              child: Text(
                'feliper.dev@gmail.com',
                style: mobile ? sub_descStyleMobile : sub_descStyle,
                textAlign: TextAlign.justify,
              ),
            ),
            minLeadingWidth: 3,
            leading: Icon(Icons.contact_mail, color: Colors.blue),
          ),
        ],
      ),
    );
