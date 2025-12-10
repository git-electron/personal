part of '../../../home_screen.dart';

class _ContactsBlock extends StatelessWidget {
  const _ContactsBlock();

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        AlignedGridView.count(
          itemCount: 4,
          shrinkWrap: true,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: context.layoutDependantValue(mobile: 2, orElse: 1),
          itemBuilder: (context, index) => [
            _ContactItem(
              onTap: () => $<UrlLauncher>().launchEmailString(Constants.email),
              icon: Assets.icons.contacts.email.brand,
              title: context.t.home.contact.contacts.email,
              value: Constants.email,
            ),
            _ContactItem(
              onTap: () => $<UrlLauncher>().launchPhoneNumberString(Constants.phone),
              icon: Assets.icons.contacts.phone.brand,
              title: context.t.home.contact.contacts.phone,
              value: Constants.phone,
            ),
            _ContactItem(
              onTap: () => $<UrlLauncher>().launchUrlString(Constants.telegramUrl),
              image: Assets.images.contacts.telegram.brand,
              title: context.t.home.contact.contacts.telegram,
              value: Constants.telegramUsername,
            ),
            _ContactItem(
              onTap: () {
                Clipboard.setData(
                  ClipboardData(text: context.t.home.contact.contacts.location),
                );
                $<ToastService>().showToast(
                  context,
                  title: context.t.general.toasts.copy_toast.title,
                  subtitle: context.t.general.toasts.copy_toast.subtitle,
                );
              },
              icon: Assets.icons.general.location.brand,
              title: context.t.home.contact.contacts.location,
              value: Constants.location,
            ),
          ][index],
        ),
        DecoratedBox(
          decoration: BoxDecoration(
            color: context.colors.cardBackground,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: context.colors.cardBorder,
            ),
          ),
          child: Padding(
            padding: Pad(all: context.layoutDependantValue(desktop: 30, orElse: 20)),
            child: Column(
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    shadcn.RepeatedAnimationBuilder(
                      start: .25,
                      end: 1.0,
                      duration: 2.seconds,
                      curve: Curves.easeInOut,
                      mode: shadcn.RepeatMode.pingPong,
                      builder: (context, value, child) {
                        return SizedBox.square(
                          dimension: 15,
                          child: Center(
                            child: SizedBox.square(
                              dimension: 10 + (5 * value),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                  color: context.colors.primary.copyWithOpacity(value),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    Text(
                      context.t.home.contact.contacts.availability.status.available,
                      style: context.bodyStyle,
                    ),
                  ],
                ),
                Text(
                  context.t.home.contact.contacts.availability.description.available,
                  style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    required this.title,
    required this.value,
    required this.onTap,
    this.icon,
    this.image,
  }) : assert(icon != null || image != null);

  final SvgGenImage? icon;
  final AssetGenImage? image;
  final String title;
  final String value;

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tappable(
      onTap: onTap,
      child: Row(
        spacing: 20,
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: context.colors.primary.copyWithOpacity(.2)),
              color: context.colors.primary.copyWithOpacity(.1),
            ),
            child: Padding(
              padding: const Pad(all: 12),
              child: SizedBox.square(
                dimension: 24,
                child: icon != null ? icon!.svg() : image!.image(),
              ),
            ),
          ),
          Column(
            spacing: 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: context.bodyStyle,
              ),
              Text(
                value,
                style: context.bodyStyle.copyWith(
                  color: context.colors.text.copyWithOpacity(.5),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
