import 'package:flutter/material.dart';

class ThemeSelector extends StatelessWidget {
  final Function onThemeSelected;

  const ThemeSelector({super.key, required this.onThemeSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<ThemeMode>(
      tooltip: 'Selecionar tema',
      borderRadius: BorderRadius.circular(3.0),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: SizedBox(
        width: 48,
        child: Icon(
          Icons.mode_night_outlined,
          color: Theme.of(context).iconTheme.color,
        ),
      ),
      onSelected: (selectedMode) => onThemeSelected(selectedMode),
      itemBuilder:
          (context) => <PopupMenuEntry<ThemeMode>>[
            PopupMenuItem<ThemeMode>(
              value: ThemeMode.system,
              child: Row(
                children: [
                  Icon(
                    Icons.computer,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  SizedBox(width: 8),
                  Text('Sistema'),
                ],
              ),
            ),
            PopupMenuItem<ThemeMode>(
              value: ThemeMode.light,
              child: Row(
                children: [
                  Icon(Icons.sunny, color: Theme.of(context).iconTheme.color),
                  SizedBox(width: 8),
                  Text('Claro'),
                ],
              ),
            ),
            PopupMenuItem<ThemeMode>(
              value: ThemeMode.dark,
              child: Row(
                children: [
                  Icon(
                    Icons.dark_mode_rounded,
                    color: Theme.of(context).iconTheme.color,
                  ),
                  SizedBox(width: 8),
                  Text('Escuro'),
                ],
              ),
            ),
          ],
    );
  }
}
