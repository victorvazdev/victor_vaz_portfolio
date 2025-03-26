import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AcademicBackgroundWidget extends StatelessWidget {
  const AcademicBackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    Widget buildGraduation(String name, String period) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              Icons.menu_book,
              size: kIsWeb && width > 700 ? 64 : 32,
              color: Theme.of(context).iconTheme.color,
            ),
            SizedBox(width: 16),
            Column(
              mainAxisAlignment:
                  kIsWeb && width > 700
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  name,
                  style:
                      kIsWeb && width > 700
                          ? TextStyle(
                            color:
                                Theme.of(context).textTheme.titleSmall!.color,
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
                            color: Theme.of(context).textTheme.bodySmall!.color,
                          )
                          : Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            kIsWeb && width > 700
                ? CrossAxisAlignment.center
                : CrossAxisAlignment.start,
        children: [
          Text(
            'Formação Acadêmica',
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

          kIsWeb && width > 700
              ? SizedBox(height: MediaQuery.sizeOf(context).height * 0.05)
              : SizedBox.shrink(),

          kIsWeb && width > 850
              ? SizedBox(
                child: Column(
                  children: [
                    kIsWeb && width > 700
                        ? SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        )
                        : SizedBox.shrink(),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildGraduation(
                          'Sistemas de Informação',
                          'UNA - de fevereiro de 2022 até o momento.',
                        ),

                        buildGraduation(
                          'Engenharia da Computação',
                          'UTFPR - de fevereiro de 2019 até Julho de 2020.',
                        ),
                      ],
                    ),

                    kIsWeb && width > 700
                        ? SizedBox(
                          height: MediaQuery.sizeOf(context).height * 0.05,
                        )
                        : SizedBox.shrink(),
                  ],
                ),
              )
              : Column(
                children: [
                  buildGraduation(
                    'Sistemas de Informação',
                    'UNA - de fevereiro de 2022 até o momento.',
                  ),

                  buildGraduation(
                    'Engenharia da Computação',
                    'UTFPR - de fevereiro de 2019 até Julho de 2020.',
                  ),
                ],
              ),
        ],
      ),
    );
  }
}
