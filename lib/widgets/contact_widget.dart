import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';
import 'package:my_portfolio_mobile/widgets/email_link_widget.dart';

class ContactWidget extends StatelessWidget {
  const ContactWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Contato',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Constants.textFontColor,
              ),
              textAlign: TextAlign.left,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  _BuildEmailContact(),

                  SizedBox(height: 8),

                  _BuildPhoneContact(),

                  SizedBox(height: 8),

                  _BuildLinkedinContact(),

                  SizedBox(height: 8),

                  _BuildGithubContact(),

                  SizedBox(height: 8),

                  _BuildLocalContact(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildLocalContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.place,
          color: Constants.textFontColor,
          size: 24,
          semanticLabel: 'Local de habitação',
        ),

        SizedBox(width: 8),

        Text(
          'Três Rios, Rio de Janeiro',
          style: TextStyle(color: Constants.textFontColor),
        ),
      ],
    );
  }
}

class _BuildGithubContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/github-logo.png',
          semanticLabel: 'Nome de usuário no GitHub',
          height: 24,
        ),

        SizedBox(width: 8),

        Text('victorvazdev', style: TextStyle(color: Constants.textFontColor)),
      ],
    );
  }
}

class _BuildLinkedinContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          'assets/images/linkedin-logo.png',
          semanticLabel: 'Nome de usuário no LinkedIn',
          height: 24,
        ),

        SizedBox(width: 8),

        Text(
          '@dev-victorvaz',
          style: TextStyle(color: Constants.textFontColor),
        ),
      ],
    );
  }
}

class _BuildPhoneContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.phone,
          color: Constants.textFontColor,
          size: 24,
          semanticLabel: 'Contato por telefone',
        ),

        SizedBox(width: 8),

        Text(
          '+55 (46) 99112-1927',
          style: TextStyle(color: Constants.textFontColor),
        ),
      ],
    );
  }
}

class _BuildEmailContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.email,
          color: Constants.textFontColor,
          size: 24,
          semanticLabel: 'Contato por e-mail',
        ),

        SizedBox(width: 8),

        EmailLinkWidget(
          email: 'contato@victorvaz.dev.br',
          subject: 'Olá, Victor',
          body: 'Vim através de seu portfólio para falar sobre...',
        ),
      ],
    );
  }
}
