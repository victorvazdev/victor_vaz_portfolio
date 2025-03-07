import 'package:flutter/material.dart';
import 'package:my_portfolio_mobile/constants.dart';

class StylizedButton extends StatelessWidget {
  final Function function;
  final String text;

  const StylizedButton({super.key, required this.function, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => function(),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.resolveWith((
          Set<WidgetState> states,
        ) {
          if (states.contains(WidgetState.pressed)) {
            return Constants.grayColor;
          }
          return Colors.white;
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
        ),
      ),
      child: Text(text, style: TextStyle(color: Constants.veryDarkColor)),
    );
  }
}
