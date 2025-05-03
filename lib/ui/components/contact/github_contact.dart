import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:victor_vaz_portfolio/app/helpers/launch_url_helper.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';

class GithubContact extends StatelessWidget {
  const GithubContact({super.key, required this.username});

  final String username;

  void _launchWebsite(BuildContext context) {
    final Uri url = Uri.parse('https://github.com/victorvazdev');
    launchUrlHelper(context, url);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.contactItemWidth,
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/images/github-logo.svg',
            semanticsLabel: 'Nome de usuário no GitHub',
            height: 24,
            colorFilter: ColorFilter.mode(
              Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 8),
          InkWell(
            onTap: () => _launchWebsite(context),
            child: Text(
              username,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
