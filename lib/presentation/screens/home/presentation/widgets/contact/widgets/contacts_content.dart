part of '../../../home_screen.dart';

class _ContactsContent extends StatelessWidget {
  const _ContactsContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const Pad(vertical: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 20,
        children: [
          Text(
            context.t.home.contact.title,
            style: context.titleStyle,
          ),
          Text(
            context.t.home.contact.description,
            style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
          ),
          const Gap(10),
          if (!context.isMobileLayout)
            Row(
              spacing: 40,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _widgets.map((widget) => Expanded(child: widget)).toList(),
            )
          else
            const Column(
              spacing: 40,
              children: _widgets,
            ),
        ],
      ),
    );
  }

  static const List<Widget> _widgets = [_ContactsBlock(), _ContactForm()];
}
