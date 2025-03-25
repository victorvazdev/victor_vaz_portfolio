import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
                        style: Theme.of(context).textTheme.titleLarge,
                      ),

                      SelectableText(
                        'Software Developer',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                )
                : SelectableText(
                  'Biografia',
                  style: Theme.of(context).textTheme.titleSmall,
                  textAlign: TextAlign.left,
                ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SelectableText(
                'Estudante de Sistemas de Informação e Desenvolvimento Mobile, apaixonado por tecnologia e aprendizado contínuo. Busco constantemente explorar novas tecnologias e aprimorar meu conhecimento em soluções consolidadas no mercado. Com uma mentalidade inovadora e foco em eficiência, estou sempre em busca de desafios que me permitam evoluir e contribuir significativamente para os projetos em que atuo.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
