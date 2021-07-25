import 'package:feliper_developer/shared/themes/colors.dart';
import 'package:feliper_developer/shared/themes/customText.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 18, right: 30),
      child: Column(
        children: [
          _profilePicContainer(),
          CustomText(
            'FELIPE AZEVEDO RIBEIRO',
            color: AppColors.mainTextColor,
            fontSize: 16,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 4),
          Text(
            'Flutter Developer 📱',
            style: TextStyle(color: AppColors.secondaryTextColor, fontSize: 14),
          ),
          SizedBox(height: 4),
          Text('☕ 📚'),
          SizedBox(height: 20),
          Container(
            width: 270,
            child: Text(
              'Tenho 19 anos, estudo Flutter desde outubro de 2020. Atualmente trabalho como Desenvolvedor Mobile Flutter e venho tentando contribuir para a comunidade de desenvolvimento com lives na Twitch, artigos e contribuições em projetos.',
              style:
                  TextStyle(color: AppColors.secondaryTextColor, fontSize: 12),
              textAlign: TextAlign.justify,
            ),
          ),
          _socialMedias(),
        ],
      ),
    );
  }

  _profilePicContainer() => Container(
        margin: const EdgeInsets.only(bottom: 26),
        height: 115,
        width: 115,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
      );

  _socialMedias() => Container(
        child: Column(
          children: [],
        ),
      );
}
