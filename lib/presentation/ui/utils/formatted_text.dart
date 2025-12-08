import 'package:flutter/material.dart';

class FormattedText extends StatelessWidget {
  const FormattedText(
    this.text, {
    required this.style,
    super.key,
  });

  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: List.generate(
          text.split('<b>').length,
          (index) => TextSpan(
            text: text.split('<b>')[index],
            style: style.copyWith(fontWeight: index.isOdd ? FontWeight.w700 : null),
          ),
        ),
      ),
    );
  }
}
