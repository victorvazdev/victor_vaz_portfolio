import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/email_link_widget.dart';

class EmailContact extends StatelessWidget {
  const EmailContact({
    super.key,
    this.isShowingEmail = false,
    required this.onChanged,
    required this.email,
  });

  final String email;
  final bool isShowingEmail;
  final ValueChanged<bool> onChanged;

  void _toggleVisibility() {
    onChanged(!isShowingEmail);
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
          isShowingEmail
              ? Row(
                children: [
                  EmailLinkWidget(email: email),
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
