import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/app/helpers/launch_url_helper.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';

class LocalContact extends StatelessWidget {
  const LocalContact({super.key, required this.localName});

  final String localName;

  void _launchWebsite(BuildContext context) {
    final Uri url = Uri.parse('https://maps.app.goo.gl/xTcMRQEX93AVQpa5A');
    launchUrlHelper(context, url);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.contactItemWidth,
      child: Row(
        children: [
          Icon(
            Icons.place,
            color: Theme.of(context).iconTheme.color,
            size: 24,
            semanticLabel: 'Local de habitação',
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () => _launchWebsite(context),
            child: Text(
              localName,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
