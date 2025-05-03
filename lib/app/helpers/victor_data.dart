import 'package:victor_vaz_portfolio/app/models/certification.dart';
import 'package:victor_vaz_portfolio/app/models/experience.dart';
import 'package:victor_vaz_portfolio/app/models/graduation.dart';
import 'package:victor_vaz_portfolio/app/models/victor_vaz.dart';

final VictorVaz me = VictorVaz(
  name: 'Victor Vaz',
  position: 'Software Developer',
  biography:
      'Estudante de Sistemas de Informação e Desenvolvimento Mobile, apaixonado por tecnologia e aprendizado contínuo. Busco constantemente explorar novas tecnologias e aprimorar meu conhecimento em soluções consolidadas no mercado. Com uma mentalidade inovadora e foco em eficiência, estou sempre em busca de desafios que me permitam evoluir e contribuir significativamente para os projetos em que atuo.',
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
);
