import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CertificationsListWidget extends StatelessWidget {
  const CertificationsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final List<String> certifications = [
      'Formação: Domine a linguagem Swift',
      'Scrum Fundamentals Certified (SFC™)',
      'Dart: dominando assincronismo e criando comunicações com APIs',
      'Dart: trabalhando com orientação a objetos',
      'Dart: trabalhando com a sintaxe e configuração de projeto',
      'Imersão Dev Back-End da Alura',
      'iOS com SwiftUI: construindo componentes e layouts',
      'iOS: construindo seu primeiro aplicativo',
      'Curso Lógica de programação / mergulhe em programação com JavaScript',
      'Swift: Entendendo a linguagem',
      'Formação: Domine a linguagem Swift',
      'iOS 18, SwiftUI 6, & Swift 6: Build iOS Apps From Scratch',
      'Arquiteturas empresarias',
      'Inteligência artificial',
      'Inteligência artificial em saúde',
      'Análise de dados e big data',
      'Gestão e qualidade de software',
      'Database foundations',
      'Java foundations',
      'O que fazer após instalar o Windows?',
      'Curso de robótica e programação em Arduíno básico',
    ];

    Widget buildCertification(String name) {
      return Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset('assets/images/certification.png', width: 16),
                const SizedBox(width: 8.0),
                Expanded(
                  child: SelectableText(
                    name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

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
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.left,
            ),

            SizedBox(height: 8),

            kIsWeb && width > 750
                ? GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 550,
                    crossAxisSpacing: 16.0,
                    mainAxisSpacing: 16.0,
                    childAspectRatio: 4.5,
                  ),
                  itemCount: certifications.length,
                  itemBuilder:
                      (context, index) =>
                          buildCertification(certifications[index]),
                )
                : ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: certifications.length,
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: buildCertification(certifications[index]),
                      ),
                ),
          ],
        ),
      ),
    );
  }
}
