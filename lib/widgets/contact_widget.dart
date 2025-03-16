import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';
import 'package:my_portfolio_mobile/widgets/email_link_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({super.key});

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  bool isShowingEmail = false;
  bool isShowingPhone = false;

  void _handleEmailWidgetChanged(bool newValue) {
    setState(() {
      isShowingEmail = newValue;
    });
  }

  void _handlePhoneWidgetChanged(bool newValue) {
    setState(() {
      isShowingPhone = newValue;
    });
  }

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
                  _BuildEmailContact(
                    isShowingEmail: isShowingEmail,
                    onChanged: _handleEmailWidgetChanged,
                  ),

                  SizedBox(height: 8),

                  _BuildPhoneContact(
                    isShowingPhone: isShowingPhone,
                    onChanged: _handlePhoneWidgetChanged,
                  ),

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
  const _BuildPhoneContact({
    this.isShowingPhone = false,
    required this.onChanged,
  });

  final bool isShowingPhone;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!isShowingPhone);
  }

  void _launchPhone() async {
    final Uri phoneUri = Uri(scheme: 'tel', path: '+5546991121927');

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw Exception('Could not launch $phoneUri');
    }
  }

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

        (isShowingPhone)
            ? Row(
              children: [
                GestureDetector(
                  onTap: _launchPhone,
                  child: Text(
                    '+55 (46) 99112-1927',
                    style: TextStyle(color: Constants.textFontColor),
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 16,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    iconSize: 16,
                    onPressed: _handleTap,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ],
            )
            : Row(
              children: [
                Text('Telefone oculto'),
                SizedBox(
                  width: 30,
                  height: 16,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    iconSize: 16,
                    onPressed: _handleTap,
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ],
            ),
      ],
    );
  }
}

class _BuildEmailContact extends StatelessWidget {
  const _BuildEmailContact({
    this.isShowingEmail = false,
    required this.onChanged,
  });

  final bool isShowingEmail;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!isShowingEmail);
  }

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

        (isShowingEmail)
            ? Row(
              children: [
                EmailLinkWidget(
                  email: 'contato@victorvaz.dev.br',
                  subject: 'Olá, Victor',
                  body: 'Vim através de seu portfólio para falar sobre...',
                ),
                SizedBox(
                  width: 30,
                  height: 16,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    iconSize: 16,
                    onPressed: _handleTap,
                    icon: Icon(Icons.remove_red_eye),
                  ),
                ),
              ],
            )
            : Row(
              children: [
                Text('E-mail oculto'),
                SizedBox(
                  width: 30,
                  height: 16,
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    constraints: BoxConstraints(),
                    iconSize: 16,
                    onPressed: _handleTap,
                    icon: Icon(Icons.remove_red_eye_outlined),
                  ),
                ),
              ],
            ),
      ],
    );
  }
}
