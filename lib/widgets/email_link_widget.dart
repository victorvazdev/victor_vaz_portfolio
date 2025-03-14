import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class EmailLinkWidget extends StatelessWidget {
  final String email;
  final String subject;
  final String body;

  const EmailLinkWidget({
    super.key,
    required this.email,
    this.subject = '',
    this.body = '',
  });

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query:
          'subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}',
    );

    if (!await launchUrl(emailUri)) {
      throw 'Could not launch $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _launchEmail,
      child: Text(
        'contato@victorvaz.dev.br',
        style: TextStyle(color: Constants.textFontColor),
      ),
    );
  }
}
