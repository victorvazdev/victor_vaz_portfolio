import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';
import 'package:victor_vaz_portfolio/ui/components/project_card.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [
        Container(
          margin: width > 700 ? EdgeInsets.only(right: 48) : null,
          width: 500,
          child: ProjectCard(
            project: Project(
              name: 'Banco d’Ouro',
              description:
                  'Flutter Banco d’Ouro é um aplicativo Flutter que simula um sistema bancário com interface gráfica. Permite ao usuário visualizar contas, cadastrar novas, e realizar transações financeiras com persistência de dados via GitHub Gists API. O sistema inclui autenticação visual simples, feedback visual com SnackBar, FutureBuilder, e organização com StreamController.',
              image: 'assets/images/banco-douro.jpg',
              url: 'https://banco-d-ouro.web.app/',
            ),
          ),
        ),
        SizedBox(
          width: 500,
          child: ProjectCard(
            project: Project(
              name: 'Cinetopia',
              description:
                  'Cinetopia é um aplicativo Flutter que permite ao usuário explorar os filmes mais populares, lançamentos recentes e fazer buscas personalizadas. Ele consome a API do The Movie Database (TMDb) e apresenta as informações de forma visual, fluida e interativa.',
              image: 'assets/images/cinetopia.jpg',
              url: 'https://cinetopia-19660.web.app/',
            ),
          ),
        ),
      ],
    );
  }
}
