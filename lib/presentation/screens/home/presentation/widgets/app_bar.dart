part of '../home_screen.dart';

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  const _AppBar({
    required this.isMobileLayout,
    required this.listController,
    required this.scrollController,
  });

  final bool isMobileLayout;
  final ListController listController;
  final ScrollController scrollController;

  double get _height => isMobileLayout ? 60 : 80;
  double get _iconHeight => _height - 40;
  double get _buttonHeight => _height - 50;

  @override
  Size get preferredSize => Size.fromHeight(_height);

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: scrollController,
      builder: (context, child) {
        final double offset = scrollController.hasClients ? scrollController.offset : 0;
        final bool isTransparent = offset == 0;

        return AnimatedContainer(
          height: _height,
          duration: 200.ms,
          decoration: BoxDecoration(
            color: isTransparent ? null : context.colors.background,
            border: Border(
              bottom: isTransparent ? BorderSide.none : BorderSide(color: context.colors.cardBorder),
            ),
          ),
          child: WebPaddingWrapper(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: context.layoutDependantValue(
                    desktop: _getScrollDependantHeight(20, offset: offset),
                    tablet: _getScrollDependantHeight(10, offset: offset),
                    mobile: _getScrollDependantHeight(5, offset: offset),
                  ),
                  children: [
                    Tappable(
                      onTap: () => _animateToItem(0),
                      child: SizedBox.square(
                        dimension: _iconHeight + 10,
                        child: Center(
                          child: Logo(
                            size: _getScrollDependantHeight(_iconHeight, offset: offset),
                          ),
                        ),
                      ),
                    ),
                    const Gap(0),
                    _AppBarNavigationItem(
                      text: context.t.home.app_bar.home,
                      onTap: () => _animateToItem(0),
                    ),
                    _AppBarNavigationItem(
                      text: context.t.home.app_bar.skills,
                      onTap: () => _animateToItem(2),
                    ),
                    _AppBarNavigationItem(
                      text: context.t.home.app_bar.projects,
                      onTap: () => _animateToItem(4),
                    ),
                    _AppBarNavigationItem(
                      text: context.t.home.app_bar.contact_me,
                      onTap: () => _animateToItem(6),
                    ),
                  ],
                ),
                Row(
                  spacing: context.layoutDependantValue(
                    desktop: _getScrollDependantHeight(20, offset: offset),
                    tablet: _getScrollDependantHeight(10, offset: offset),
                    mobile: _getScrollDependantHeight(5, offset: offset),
                  ),
                  children: [
                    AppIconButton.image(
                      size: _getScrollDependantHeight(_buttonHeight, offset: offset),
                      image: switch (LocaleSettings.currentLocale) {
                        AppLocale.en => Assets.images.locales.en,
                        AppLocale.ru => Assets.images.locales.ru,
                      },
                      onTap: () => LocaleSettings.setLocale(
                        switch (LocaleSettings.currentLocale) {
                          AppLocale.en => AppLocale.ru,
                          AppLocale.ru => AppLocale.en,
                        },
                      ),
                    ),
                    AppIconButton(
                      size: _getScrollDependantHeight(_buttonHeight, offset: offset),
                      icon: context.isDarkTheme ? Assets.icons.theme.moon.light : Assets.icons.theme.sun.dark,
                      onTap: context.switchThemeMode,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _animateToItem(int index) => listController.animateTo(index, scrollController: scrollController);

  double _getScrollDependantHeight(double value, {required double offset}) => value + (10 - offset / 5).clamp(0, 10);
}

class _AppBarNavigationItem extends StatelessWidget {
  const _AppBarNavigationItem({
    required this.text,
    required this.onTap,
  });

  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      onTap: onTap,
      text: text,
    );
  }
}
