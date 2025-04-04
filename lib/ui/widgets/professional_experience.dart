import 'package:flutter/material.dart';

class ProfessionalExperience extends StatelessWidget {
  const ProfessionalExperience({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Widget buildExperience(String name, String period, String description) {
      return Container(
        padding: const EdgeInsets.all(48),
        decoration: BoxDecoration(
          color: Theme.of(context).appBarTheme.backgroundColor,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Theme.of(
                context,
              ).appBarTheme.shadowColor!.withValues(alpha: 0.1),
              spreadRadius: 0,
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.work,
                  size: width > 700 ? 64 : 32,
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
                            width > 700
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
                            width > 700
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
            width > 700 ? SizedBox(height: 16) : SizedBox.shrink(),
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
            width > 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          SelectableText(
            'Experiência Profissional',
            style:
                width > 700
                    ? TextStyle(
                      color: Theme.of(context).textTheme.titleSmall!.color,
                      fontSize: 28,
                      fontWeight:
                          Theme.of(context).textTheme.titleSmall!.fontWeight,
                    )
                    : Theme.of(context).textTheme.titleSmall,
          ),

          SizedBox(height: MediaQuery.sizeOf(context).height * 0.05),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildExperience(
                'Liderança da equipe de comunicação',

                'Lagoinnha Buritis - de março de 2023 até outubro de 2023',

                'Liderei a equipe de comunicação, coordenando a captação de imagens e vídeos de momentos-chave em eventos, gerenciando mídias sociais e realizando transmissões ao vivo no YouTube, garantindo uma comunicação eficiente e engajamento do público.',
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),

              buildExperience(
                'Liderança da equipe de mídia',

                'Luz do Mundo Church - de novembro de 2021 até fevereiro de 2023',

                'Fui responsável pela distribuição de tarefas dentro da equipe, desenvolvimento e manutenção do website, gerenciamento de canal no YouTube e administração de mídias sociais, garantindo a criação de conteúdo estratégico e a otimização da presença digital da marca.',
              ),

              SizedBox(height: MediaQuery.sizeOf(context).height * 0.03),
            ],
          ),
        ],
      ),
    );
  }
}
