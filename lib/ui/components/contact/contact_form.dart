// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/view_models/contact_view_model.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();

  final ContactViewModel contactViewModel = ContactViewModel();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final messageController = TextEditingController();

  String name = '';
  String email = '';
  String message = '';

  bool isSending = false;

  String? submissionFeedback;

  Future<void> sendEmail() async {
    setState(() {
      isSending = true;
    });

    final bool success = await contactViewModel.sendEmail(name, email, message);

    setState(() {
      isSending = false;
      if (success) {
        nameController.clear();
        emailController.clear();
        messageController.clear();
        submissionFeedback = 'Mensagem enviada com sucesso!';
      } else {
        submissionFeedback = 'Falha ao enviar a mensagem. Tente novamente.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: const EdgeInsets.all(48.0),
        decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Preencha o formulário abaixo e entrarei em contato com você o mais breve possível.',
            ),
            SizedBox(height: 32.0),
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                labelStyle: TextStyle(color: Colors.white60),
                floatingLabelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onChanged: (value) => name = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Digite o seu nome';
                }

                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'E-mail',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                labelStyle: TextStyle(color: Colors.white60),
                floatingLabelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onChanged: (value) => email = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Digite o seu e-mail';
                }

                final RegExp emailRegex = RegExp(
                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                );

                if (!emailRegex.hasMatch(value)) {
                  return 'Digite um e-mail válido';
                }

                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: messageController,
              maxLines: null,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                labelText: 'Mensagem',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Theme.of(context).primaryColor),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                labelStyle: TextStyle(color: Colors.white60),
                floatingLabelStyle: TextStyle(
                  color: Theme.of(context).primaryColor,
                ),
              ),
              onChanged: (value) => message = value,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Digite a sua mensagem';
                }

                return null;
              },
            ),
            submissionFeedback != null
                ? Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: SelectableText(
                    submissionFeedback!,
                    style: TextStyle(
                      color:
                          submissionFeedback!.contains('sucesso')
                              ? Colors.green
                              : Colors.red,
                    ),
                  ),
                )
                : SizedBox.shrink(),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed:
                  isSending
                      ? null
                      : () {
                        if (_formKey.currentState!.validate()) {
                          sendEmail();
                        }
                      },
              child:
                  isSending
                      ? SizedBox(
                        height: 16.0,
                        width: 16.0,
                        child: CircularProgressIndicator(
                          color: Theme.of(context).primaryColor,
                        ),
                      )
                      : const Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
