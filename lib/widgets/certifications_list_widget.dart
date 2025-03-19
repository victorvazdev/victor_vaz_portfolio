import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';

class CertificationsListWidget extends StatelessWidget {
  const CertificationsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Certificações',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Constants.textFontColor,
              ),
              textAlign: TextAlign.left,
            ),

            _BuildCertification(name: 'Formação: Domine a linguagem Swift'),
            _BuildCertification(name: 'Scrum Fundamentals Certified (SFC™)'),
            _BuildCertification(
              name:
                  'Dart: dominando assincronismo e criando comunicações com APIs',
            ),
            _BuildCertification(
              name: 'Dart: trabalhando com orientação a objetos',
            ),
            _BuildCertification(
              name: 'Dart: trabalhando com a sintaxe e configuração de projeto',
            ),
            _BuildCertification(name: 'Imersão Dev Back-End da Alura'),
            _BuildCertification(
              name: 'iOS com SwiftUI: construindo componentes e layouts',
            ),
            _BuildCertification(
              name: 'iOS: construindo seu primeiro aplicativo',
            ),
            _BuildCertification(
              name:
                  'Curso Lógica de programação / mergulhe em programação com JavaScript',
            ),
            _BuildCertification(name: 'Swift: Entendendo a linguagem'),
            _BuildCertification(name: 'Formação: Domine a linguagem Swift'),
            _BuildCertification(
              name: 'iOS 18, SwiftUI 6, & Swift 6: Build iOS Apps From Scratch',
            ),
            _BuildCertification(name: 'Arquiteturas empresarias'),
            _BuildCertification(name: 'Inteligência artificial'),
            _BuildCertification(name: 'Inteligência artificial em saúde'),
            _BuildCertification(name: 'Análise de dados e big data'),
            _BuildCertification(name: 'Gestão e qualidade de software'),
            _BuildCertification(name: 'Database foundations'),
            _BuildCertification(name: 'Java foundations'),
            _BuildCertification(name: 'O que fazer após instalar o Windows?'),
            _BuildCertification(
              name: 'Curso de robótica e programação em Arduíno básico',
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildCertification extends StatelessWidget {
  const _BuildCertification({required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('assets/images/certification.png', width: 16),
              SizedBox(width: 8.0),
              Expanded(
                child: Text(
                  name,
                  style: TextStyle(color: Constants.textFontColor),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
