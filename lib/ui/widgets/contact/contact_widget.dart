import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/email_contact.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/github_contact.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/linkedin_contact.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/local_contact.dart';
import 'package:victor_vaz_portfolio/ui/widgets/contact/phone_contact.dart';

class ContactWidget extends StatefulWidget {
  const ContactWidget({
    super.key,
    required this.email,
    required this.phone,
    required this.linkedinUsername,
    required this.githubUsername,
    required this.local,
  });

  final String email;
  final String phone;
  final String linkedinUsername;
  final String githubUsername;
  final String local;

  @override
  State<ContactWidget> createState() => _ContactWidgetState();
}

class _ContactWidgetState extends State<ContactWidget> {
  bool isShowingEmail = false;
  bool isShowingPhone = false;

  void _toggleEmailVisibility(bool newValue) {
    setState(() {
      isShowingEmail = newValue;
    });
  }

  void _togglePhoneVisibility(bool newValue) {
    setState(() {
      isShowingPhone = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            width > 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          SelectableText(
            'Contato',
            style:
                width > 700
                    ? TextStyle(
                      color: Theme.of(context).textTheme.titleSmall!.color,
                      fontSize: 28,
                      fontWeight:
                          Theme.of(context).textTheme.titleSmall!.fontWeight,
                    )
                    : Theme.of(context).textTheme.titleSmall,
          ),

          SizedBox(height: height * 0.03),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                width > 700
                    ? Wrap(
                      spacing: 8.0,
                      runSpacing: 32.0,
                      children: [
                        EmailContact(
                          email: widget.email,
                          isShowingEmail: isShowingEmail,
                          onChanged: _toggleEmailVisibility,
                        ),
                        PhoneContact(
                          phone: widget.phone,
                          isShowingPhone: isShowingPhone,
                          onChanged: _togglePhoneVisibility,
                        ),
                        LinkedinContact(username: widget.linkedinUsername),
                        GithubContact(username: widget.githubUsername),
                        LocalContact(localName: widget.local),
                      ],
                    )
                    : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width),
                        EmailContact(
                          email: widget.email,
                          isShowingEmail: isShowingEmail,
                          onChanged: _toggleEmailVisibility,
                        ),
                        const SizedBox(height: 8),
                        PhoneContact(
                          phone: widget.phone,
                          isShowingPhone: isShowingPhone,
                          onChanged: _togglePhoneVisibility,
                        ),
                        const SizedBox(height: 8),
                        LinkedinContact(username: widget.linkedinUsername),
                        const SizedBox(height: 8),
                        GithubContact(username: widget.githubUsername),
                        const SizedBox(height: 8),
                        LocalContact(localName: widget.local),
                      ],
                    ),
          ),
        ],
      ),
    );
  }
}
