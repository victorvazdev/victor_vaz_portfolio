import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/models/contact.dart';
import 'package:victor_vaz_portfolio/ui/components/contact/email_contact_card.dart';
import 'package:victor_vaz_portfolio/ui/components/contact/phone_contact_card.dart';
import 'package:victor_vaz_portfolio/ui/components/contact/contact_card.dart';

class ContactList extends StatelessWidget {
  const ContactList({
    super.key,
    required this.email,
    required this.phone,
    required this.linkedin,
    required this.github,
    required this.local,
  });

  final String email;
  final String phone;
  final Contact linkedin;
  final Contact github;
  final Contact local;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:
            width > 700 ? CrossAxisAlignment.center : CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                width > 700
                    ? Wrap(
                      spacing: 8.0,
                      runSpacing: 32.0,
                      children: [
                        EmailContactCard(email: email),
                        PhoneContactCard(phone: phone),
                        ContactCard(contact: linkedin),
                        ContactCard(contact: github),
                        ContactCard(contact: local),
                      ],
                    )
                    : Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(width: MediaQuery.of(context).size.width),
                        EmailContactCard(email: email),
                        const SizedBox(height: 8),
                        PhoneContactCard(phone: phone),
                        const SizedBox(height: 8),
                        ContactCard(contact: linkedin),
                        const SizedBox(height: 8),
                        ContactCard(contact: github),
                        const SizedBox(height: 8),
                        ContactCard(contact: local),
                      ],
                    ),
          ),
        ],
      ),
    );
  }
}
