import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/constants.dart';

class AcademicBackgroundWidget extends StatelessWidget {
  const AcademicBackgroundWidget({super.key});

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
            Text(
              'Formação Acadêmica',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Constants.textFontColor,
              ),
              textAlign: TextAlign.left,
            ),

            kIsWeb && width > 700
                ? Row(
                  children: [
                    _BuildGraduation(
                      name: 'Sistemas de Informação',
                      period: 'UNA - de fevereiro de 2022 até o momento.',
                    ),

                    SizedBox(width: 32),

                    _BuildGraduation(
                      name: 'Engenharia da Computação',
                      period: 'UTFPR - de fevereiro de 2019 até Julho de 2020.',
                    ),
                  ],
                )
                : Column(
                  children: [
                    _BuildGraduation(
                      name: 'Sistemas de Informação',
                      period: 'UNA - de fevereiro de 2022 até o momento.',
                    ),

                    _BuildGraduation(
                      name: 'Engenharia da Computação',
                      period: 'UTFPR - de fevereiro de 2019 até Julho de 2020.',
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}

class _BuildGraduation extends StatelessWidget {
  const _BuildGraduation({required this.name, required this.period});

  final String name;
  final String period;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Image.asset('assets/images/graduation.png', height: 32),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                  color: Constants.textFontColor,
                  fontWeight: FontWeight.bold,
                ),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
              Text(
                period,
                style: TextStyle(color: Constants.textFontColor, fontSize: 9),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
