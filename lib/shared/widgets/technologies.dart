import 'package:feliper_developer/shared/styles/textStyles.dart';
import 'package:flutter/material.dart';

class Technologies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Tecnologias', style: infoStyle),
          Divider(
            thickness: 3,
            color: Colors.blue,
            indent: 0,
            endIndent: constraints.maxWidth * .7,
          ),
          SizedBox(height: 16),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 16),
                  Text('Dart', style: infoStyle),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 16),
                  Text('Flutter', style: infoStyle),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 16),
                  Text('Java', style: infoStyle),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.play_arrow, color: Colors.white, size: 16),
                  Text('SQL', style: infoStyle),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
