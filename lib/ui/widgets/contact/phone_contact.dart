import 'package:flutter/material.dart';
import 'package:victor_vaz_portfolio/helpers/format_phone_number.dart';
import 'package:victor_vaz_portfolio/helpers/launch_url_helper.dart';
import 'package:victor_vaz_portfolio/ui/styles/constants.dart';

class PhoneContact extends StatelessWidget {
  const PhoneContact({
    super.key,
    this.isShowingPhone = false,
    required this.onChanged,
    required this.phone,
  });

  final String phone;
  final bool isShowingPhone;
  final ValueChanged<bool> onChanged;

  void _toggleVisibility() {
    onChanged(!isShowingPhone);
  }

  void _launchPhone(BuildContext context) {
    final Uri phoneUri = Uri(scheme: 'tel', path: phone);
    launchUrlHelper(context, phoneUri);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Constants.contactItemWidth,
      child: Row(
        children: [
          Icon(
            Icons.phone,
            color: Theme.of(context).iconTheme.color,
            size: 24,
            semanticLabel: 'Contato por telefone',
          ),
          const SizedBox(width: 8),
          (isShowingPhone)
              ? Row(
                children: [
                  InkWell(
                    onTap: () => _launchPhone(context),
                    child: Text(
                      formatPhoneNumber(phone),
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
                      'Telefone oculto',
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
