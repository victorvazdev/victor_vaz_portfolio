import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';
import 'package:victor_vaz_portfolio/ui/components/project_card.dart';

class ProjectList extends StatelessWidget {
  const ProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Project> projects = [
      Project(
        name: 'Banco d’Ouro',
        description:
            'Banco d’Ouro é um aplicativo Flutter que simula um sistema bancário com interface gráfica. Permite ao usuário visualizar contas, cadastrar novas, e realizar transações financeiras com persistência de dados via GitHub Gists API. O sistema inclui autenticação visual simples, feedback visual com SnackBar, FutureBuilder, e organização com StreamController.',
        image: 'assets/images/banco-douro.jpg',
        video: 'https://youtube.com/shorts/nVIehQ3PgR0?feature=share',
        url: 'https://banco-d-ouro.web.app/',
      ),
      Project(
        name: 'Cinetopia',
        description:
            'Cinetopia é um aplicativo Flutter que permite ao usuário explorar os filmes mais populares, lançamentos recentes e fazer buscas personalizadas. Ele consome a API do The Movie Database (TMDb) e apresenta as informações de forma visual, fluida e interativa.',
        image: 'assets/images/cinetopia.jpg',
        video: 'https://youtube.com/shorts/4wSzNC_XFLQ?feature=share',
        url: 'https://cinetopia-19660.web.app/',
      ),
      Project(
        name: 'ConversorDeMoedas',
        description:
            'Este projeto apresenta um aplicativo iOS desenvolvido com a funcionalidade de conversão de moedas, permitindo ao usuário selecionar diferentes ajustes e realizar conversões de valores com praticidade. O foco principal do projeto foi a implementação de lógica de conversão e a construção de uma interface clara e intuitiva.',
        image: 'assets/images/ConversorDeMoedas.jpg',
        video: 'https://youtube.com/shorts/rnJO_UyZWVE',
      ),
      Project(
        name: 'JPApexPredators',
        description:
            'Este aplicativo iOS foi desenvolvido para exibir uma lista de dinossauros a partir de um arquivo local em formato JSON. A aplicação permite filtrar os dinossauros por tipo e ordená-los em ordem alfabética. Ao selecionar um item da lista, o usuário é direcionado para uma tela de detalhes que apresenta informações adicionais, incluindo a localização do dinossauro exibida através da API de Mapas da Apple.',
        image: 'assets/images/JPApexPredator.jpg',
        video: 'https://youtube.com/shorts/lCa0uYM_TN4',
      ),
      Project(
        name: 'BBQuotes',
        description:
            'Este projeto consiste em um aplicativo desenvolvido para iOS que consome uma API para exibir personagens e citações icônicas das séries Breaking Bad, Better Call Saul e El Camino. A aplicação foi construída com foco em praticar integração com APIs REST, gerenciamento de dados e experiência do usuário.',
        image: 'assets/images/BBQuotes.jpg',
        video: 'https://youtube.com/shorts/sJ06nJkHuLY',
      ),
      Project(
        name: 'Dex3',
        description:
            'O Dex3 é um aplicativo iOS que consome a PokéAPI para capturar uma grande quantidade de dados sobre Pokémons. A aplicação processa essas informações e exibe uma lista interativa contendo detalhes de cada Pokémon, como nome, tipo e atributos. O projeto tem como foco a prática de consumo de APIs REST, manipulação de dados e construção de interfaces dinâmicas.',
        image: 'assets/images/Dex3.jpg',
        video: 'https://youtu.be/EwN0EmSkYT8',
      ),
      Project(
        name: 'HPTrivia',
        description:
            'O HpTrivia é um jogo de perguntas e respostas desenvolvido para iOS com foco no universo de Harry Potter. O jogador pode escolher perguntas baseadas em livros específicos, com três volumes disponíveis gratuitamente e outros quatro desbloqueáveis por meio de compra. O projeto explora conceitos como navegação entre telas, lógica condicional e integração de compras no app (in-app purchases).',
        image: 'assets/images/HPTrivia.jpg',
        video: 'https://youtu.be/1cCxlNfNaws',
      ),
      Project(
        name: 'iQuiz',
        description:
            'O iQuiz é um aplicativo iOS desenvolvido para testar os conhecimentos dos usuários sobre o universo geek, abrangendo temas como filmes, séries, games, e cultura pop em geral. A aplicação oferece uma experiência interativa e divertida, utilizando lógica de perguntas e respostas com pontuação dinâmica.',
        image: 'assets/images/iQuiz.jpg',
        video: 'https://youtube.com/shorts/sxIKoSYBfTM',
      ),
      Project(
        name: 'AluraViagens',
        description:
            'O Alura Viagens é uma interface inicial de um aplicativo iOS voltado ao planejamento de viagens. Desenvolvido durante o curso “iOS: Auto Layout com Constraints” da Alura, o projeto foca na construção de uma UI responsiva utilizando Auto Layout, garantindo compatibilidade e boa experiência tanto em iPhones quanto em iPads.',
        image: 'assets/images/AluraViagens.jpg',
        video: 'https://youtube.com/shorts/GsNL2JSm3Do',
      ),
      Project(
        name: 'ChefDelivery',
        description:
            'O ChefDelivery é um projeto desenvolvido com SwiftUI que apresenta a tela inicial de um aplicativo de delivery de comidas. A interface foi criada com foco em design moderno e experiência do usuário, utilizando os recursos declarativos do SwiftUI para garantir uma construção visual eficiente.',
        image: 'assets/images/ChefDelivery.jpg',
        video: 'https://youtube.com/shorts/LWMer3tEzlU',
      ),
    ];

    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: [...projects.map((e) => ProjectCard(project: e))],
    );
  }
}
