import 'package:victor_vaz_portfolio/app/models/certification.dart';
import 'package:victor_vaz_portfolio/app/models/experience.dart';
import 'package:victor_vaz_portfolio/app/models/graduation.dart';
import 'package:victor_vaz_portfolio/app/models/project.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';

final VictorVaz me = VictorVaz(
  name: 'Victor Vaz',
  position: 'Software Developer',
  biography:
      'Sou um desenvolvedor de software em formação com foco em desenvolvimento mobile e web, apaixonado por tecnologia, design limpo e soluções eficientes. Atualmente curso Sistemas de Informação, e venho me especializando em Flutter, explorando seus recursos para criação de apps modernos, performáticos e responsivo.',
  email: 'contato@victorvaz.dev.br',
  phone: '+5546991121927',
  linkedin: 'in/victorvazdev',
  github: 'victorvazdev',
  location: 'Três Rios, Rio de Janeiro',
  graduations: <Graduation>[
    Graduation(
      name: 'Sistemas de Informação',
      period: 'UNA - de fevereiro de 2022 até o momento.',
    ),
    Graduation(
      name: 'Engenharia da Computação',
      period: 'UTFPR - de fevereiro de 2019 até Julho de 2020.',
    ),
  ],
  experiences: <Experience>[
    Experience(
      name: 'Liderança da equipe de comunicação',
      period: 'Lagoinnha Buritis - de março de 2023 até outubro de 2023',
      description:
          'Liderei a equipe de comunicação, coordenando a captação de imagens e vídeos de momentos-chave em eventos, gerenciando mídias sociais e realizando transmissões ao vivo no YouTube, garantindo uma comunicação eficiente e engajamento do público.',
    ),
    Experience(
      name: 'Liderança da equipe de mídia',
      period: 'Luz do Mundo Church - de novembro de 2021 até fevereiro de 2023',
      description:
          'Fui responsável pela distribuição de tarefas dentro da equipe, desenvolvimento e manutenção do website, gerenciamento de canal no YouTube e administração de mídias sociais, garantindo a criação de conteúdo estratégico e a otimização da presença digital da marca.',
    ),
  ],
  certifications: <Certification>[
    Certification(name: 'EF Level 8 - Intermediate - CEFR Level B1'),
    Certification(
      name:
          'Formação Dart: cursos para aprender a linguagem utilizada no Flutter',
    ),
    Certification(
      name: 'Flutter: melhore a qualidade do app com design patterns',
    ),
    Certification(
      name: 'Masterclass Online: Introdução à Análise de Dados com Python',
    ),
    Certification(name: 'Do Dart ao Flutter: criando seu primeiro aplicativo'),
    Certification(name: 'Praticando Collections no Dart: listas, sets e mapas'),
    Certification(name: 'Formação: Domine a linguagem Swift'),
    Certification(name: 'Scrum Fundamentals Certified (SFC™)'),
    Certification(
      name: 'Dart: dominando assincronismo e criando comunicações com APIs',
    ),
    Certification(name: 'Dart: trabalhando com orientação a objetos'),
    Certification(
      name: 'Dart: trabalhando com a sintaxe e configuração de projeto',
    ),
    Certification(name: 'Imersão Dev Back-End da Alura'),
    Certification(name: 'iOS com SwiftUI: construindo componentes e layouts'),
    Certification(name: 'iOS: construindo seu primeiro aplicativo'),
    Certification(
      name:
          'Curso Lógica de programação / mergulhe em programação com JavaScript',
    ),
    Certification(name: 'Swift: Entendendo a linguagem'),
    Certification(name: 'Formação: Domine a linguagem Swift'),
    Certification(
      name: 'iOS 18, SwiftUI 6, & Swift 6: Build iOS Apps From Scratch',
    ),
    Certification(name: 'Arquiteturas empresarias'),
    Certification(name: 'Inteligência artificial'),
    Certification(name: 'Inteligência artificial em saúde'),
    Certification(name: 'Análise de dados e big data'),
    Certification(name: 'Gestão e qualidade de software'),
    Certification(name: 'Database foundations'),
    Certification(name: 'Java foundations'),
    Certification(name: 'O que fazer após instalar o Windows?'),
    Certification(name: 'Curso de robótica e programação em Arduíno básico'),
  ],
  projects: <Project>[
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
  ],
);
