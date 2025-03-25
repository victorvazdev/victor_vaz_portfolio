import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ProfessionalExperience extends StatelessWidget {
  const ProfessionalExperience({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Widget buildExperience(String name, String period, String description) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.work,
                  size: kIsWeb && width > 700 ? 64 : 32,
                  color: Theme.of(context).iconTheme.color,
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SelectableText(
                        name,
                        style:
                            kIsWeb && width > 700
                                ? TextStyle(
                                  color:
                                      Theme.of(
                                        context,
                                      ).textTheme.titleSmall!.color,
                                  fontSize: 24,
                                  fontWeight:
                                      Theme.of(
                                        context,
                                      ).textTheme.titleSmall!.fontWeight,
                                )
                                : Theme.of(context).textTheme.titleSmall,
                      ),
                      SelectableText(
                        period,
                        style:
                            kIsWeb && width > 700
                                ? TextStyle(
                                  color:
                                      Theme.of(
                                        context,
                                      ).textTheme.bodySmall!.color,
                                )
                                : Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 5),
            kIsWeb && width > 700 ? SizedBox(height: 16) : SizedBox.shrink(),
            SelectableText(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment:
            kIsWeb && width > 700
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
        children: [
          Text(
            'Experiência Profissional',
            style:
                kIsWeb && width > 700
                    ? TextStyle(
                      color: Theme.of(context).textTheme.titleSmall!.color,
                      fontSize: 28,
                      fontWeight:
                          Theme.of(context).textTheme.titleSmall!.fontWeight,
                    )
                    : Theme.of(context).textTheme.titleSmall,
          ),

          SizedBox(
            height:
                kIsWeb && width > 700
                    ? MediaQuery.sizeOf(context).height * 0.6
                    : null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildExperience(
                  'Liderança da equipe de comunicação',

                  'Lagoinnha Buritis - de março de 2023 até outubro de 2023',

                  'Liderei a equipe de comunicação, coordenando a captação de imagens e vídeos de momentos-chave em eventos, gerenciando mídias sociais e realizando transmissões ao vivo no YouTube, garantindo uma comunicação eficiente e engajamento do público.',
                ),

                buildExperience(
                  'Liderança da equipe de mídia',

                  'Luz do Mundo Church - de novembro de 2021 até fevereiro de 2023',

                  'Fui responsável pela distribuição de tarefas dentro da equipe, desenvolvimento e manutenção do website, gerenciamento de canal no YouTube e administração de mídias sociais, garantindo a criação de conteúdo estratégico e a otimização da presença digital da marca.',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
