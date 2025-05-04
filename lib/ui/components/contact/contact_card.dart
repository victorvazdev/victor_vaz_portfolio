import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:victor_vaz_portfolio/app/helpers/launch_url_helper.dart';
import 'package:victor_vaz_portfolio/app/models/contact.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.contactItemWidth,
      child: Row(
        children: [
          contact.asset != null
              ? SvgPicture.asset(
                contact.asset!,
                semanticsLabel: contact.semanticLabel,
                height: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).iconTheme.color!,
                  BlendMode.srcIn,
                ),
              )
              : SizedBox.shrink(),
          contact.icon != null
              ? Icon(
                contact.icon,
                color: Theme.of(context).iconTheme.color,
                size: 24,
                semanticLabel: contact.semanticLabel,
              )
              : SizedBox.shrink(),
          const SizedBox(width: 8),
          InkWell(
            onTap: () => launchUrlHelper(context, Uri.parse(contact.link)),
            child: Text(
              contact.text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
