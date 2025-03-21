import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';

class BiographyWidget extends StatelessWidget {
  const BiographyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kIsWeb && width > 600
                ? Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        'Victor Vaz',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Constants.fontColor,
                        ),
                      ),

                      SelectableText(
                        'Software Developer',
                        style: TextStyle(
                          fontSize: 18,
                          color: Constants.secundaryFontColor,
                        ),
                      ),
                    ],
                  ),
                )
                : SelectableText(
                  'Biografia',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Constants.textFontColor,
                  ),
                  textAlign: TextAlign.left,
                ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                'Estudante de Sistemas de Informação e Desenvolvimento Mobile, apaixonado por tecnologia e aprendizado contínuo. Busco constantemente explorar novas tecnologias e aprimorar meu conhecimento em soluções consolidadas no mercado. Com uma mentalidade inovadora e foco em eficiência, estou sempre em busca de desafios que me permitam evoluir e contribuir significativamente para os projetos em que atuo.',
                style: TextStyle(color: Constants.textFontColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
