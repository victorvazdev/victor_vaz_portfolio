import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';

class EmailContactCard extends StatefulWidget {
  const EmailContactCard({super.key, required this.email});

  final String email;

  @override
  State<EmailContactCard> createState() => _EmailContactCardState();
}

class _EmailContactCardState extends State<EmailContactCard> {
  bool isShowing = false;

  void _toggleVisibility() {
    setState(() {
      isShowing = !isShowing;
    });
  }

  Future<void> _launchEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: widget.email,
      query:
          'subject=${Uri.encodeComponent('')}&body=${Uri.encodeComponent('')}',
    );

    if (!await launchUrl(emailUri)) {
      throw 'Could not launch $emailUri';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.contactItemWidth,
      child: Row(
        children: [
          Icon(
            Icons.email,
            color: Theme.of(context).iconTheme.color,
            size: 24,
            semanticLabel: 'Contato por e-mail',
          ),
          const SizedBox(width: 8),
          isShowing
              ? Row(
                children: [
                  InkWell(
                    onTap: _launchEmail,
                    child: Text(
                      'contato@victorvaz.dev.br',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  SizedBox(
                    width: 30,
                    height: 16,
                    child: IconButton(
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      iconSize: 16,
                      onPressed: _toggleVisibility,
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: Theme.of(context).iconTheme.color,
                      ),
                    ),
                  ),
                ],
              )
              : InkWell(
                onTap: _toggleVisibility,
                child: Row(
                  children: [
                    Text(
                      'E-mail oculto',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    SizedBox(
                      width: 30,
                      height: 16,
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        iconSize: 16,
                        onPressed: _toggleVisibility,
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Theme.of(context).iconTheme.color,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        ],
      ),
    );
  }
}
