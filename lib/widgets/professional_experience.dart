import 'package:flutter/material.dart';

class ProfessionalExperience extends StatelessWidget {
  const ProfessionalExperience({super.key});

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
              'Experiência Profissional',
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.left,
            ),

            _BuildExperience(
              name: 'Liderança da equipe de comunicação',
              period:
                  'Lagoinnha Buritis - de março de 2023 até outubro de 2023',
              description:
                  'Liderei a equipe de comunicação, coordenando a captação de imagens e vídeos de momentos-chave em eventos, gerenciando mídias sociais e realizando transmissões ao vivo no YouTube, garantindo uma comunicação eficiente e engajamento do público.',
            ),

            _BuildExperience(
              name: 'Liderança da equipe de mídia',
              period:
                  'Luz do Mundo Church - de novembro de 2021 até fevereiro de 2023',
              description:
                  'Fui responsável pela distribuição de tarefas dentro da equipe, desenvolvimento e manutenção do website, gerenciamento de canal no YouTube e administração de mídias sociais, garantindo a criação de conteúdo estratégico e a otimização da presença digital da marca.',
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildExperience extends StatelessWidget {
  const _BuildExperience({
    required this.name,
    required this.period,
    required this.description,
  });

  final String name;
  final String period;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/suitcase.png', height: 32),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SelectableText(
                      name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    SelectableText(
                      period,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          SelectableText(
            description,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
