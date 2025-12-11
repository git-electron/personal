part of '../../../home_screen.dart';

class _ProjectCard extends StatefulWidget {
  const _ProjectCard(this.project);

  final Project project;

  @override
  State<_ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<_ProjectCard> {
  bool _isHovering = false;

  @override
  Widget build(BuildContext context) {
    final List<String> descriptionSplitted = widget.project.description.split('\n');

    return Tappable(
      onTap: () {},
      child: MouseRegion(
        opaque: false,
        onEnter: (_) => setState(() => _isHovering = true),
        onExit: (_) => setState(() => _isHovering = false),
        child: AnimatedContainer(
          duration: 100.ms,
          decoration: BoxDecoration(
            color: context.colors.background,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              strokeAlign: BorderSide.strokeAlignOutside,
              color: _isHovering ? context.colors.onBackground : context.colors.cardBorder,
            ),
          ),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.topRight,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        child: AspectRatio(
                          aspectRatio: 16 / 9,
                          child: widget.project.cover.image(fit: BoxFit.cover),
                        ),
                      ),
                      Padding(
                        padding: const Pad(all: 15),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: context.colors.onBackground,
                            border: Border.all(color: context.colors.background.copyWithOpacity(.2)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const Pad(horizontal: 10, vertical: 4),
                            child: Text(
                              widget.project.category,
                              style: context.bodyStyle.copyWith(
                                fontSize: context.layoutDependantValue(desktop: 12, orElse: 10),
                                color: context.colors.background,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: Pad(
                      top: _getCardPadding(context),
                      horizontal: _getCardPadding(context),
                    ),
                    child: Column(
                      spacing: 5,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.project.title,
                          style: context.bodyStyle,
                        ),
                        Text(
                          descriptionSplitted.first,
                          style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
                        ),
                        Text(
                          descriptionSplitted.last,
                          style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: Pad(
                  horizontal: _getCardPadding(context),
                  bottom: _getCardPadding(context),
                ),
                child: Column(
                  spacing: 15,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: context.layoutDependantValue(desktop: 10, orElse: 8),
                      runSpacing: context.layoutDependantValue(desktop: 10, orElse: 8),
                      children: widget.project.skills.map(_ProjectSkillCard.new).toList(),
                    ),
                    Divider(
                      height: 0,
                      thickness: 1,
                      color: context.colors.onBackground.copyWithOpacity(.2),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 10,
                      children: [
                        if (widget.project.hasGithubUrl)
                          AppTextButton(
                            onTap: () => $<UrlLauncher>().launchUrlString(widget.project.gitHubUrl!),
                            image: context.themeDependantValue(
                              dark: Assets.images.contacts.github.light,
                              light: Assets.images.contacts.github.dark,
                            ),
                            text: context.t.home.projects.buttons.code,
                          ),
                        if (widget.project.hasGooglePlayUrl)
                          AppTextButton(
                            onTap: () => $<UrlLauncher>().launchUrlString(widget.project.googlePlayUrl!),
                            image: context.themeDependantValue(
                              dark: Assets.images.stores.googlePlay.light,
                              light: Assets.images.stores.googlePlay.dark,
                            ),
                            text: context.t.home.projects.buttons.google_play,
                          ),
                        if (widget.project.hasAppStoreUrl)
                          AppTextButton(
                            onTap: () => $<UrlLauncher>().launchUrlString(widget.project.appStoreUrl!),
                            image: context.themeDependantValue(
                              dark: Assets.images.stores.appStore.light,
                              light: Assets.images.stores.appStore.dark,
                            ),
                            text: context.t.home.projects.buttons.app_store,
                          ),
                        if (widget.project.hasWebsiteUrl)
                          AppTextButton(
                            onTap: () => $<UrlLauncher>().launchUrlString(widget.project.websiteUrl!),
                            icon: context.themeDependantValue(
                              dark: Assets.icons.general.link.light,
                              light: Assets.icons.general.link.dark,
                            ),
                            text: context.t.home.projects.buttons.website,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _getCardPadding(BuildContext context) => context.layoutDependantValue(desktop: 30, orElse: 20);
}

class _ProjectSkillCard extends StatelessWidget {
  const _ProjectSkillCard(this.title);

  final String title;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: context.colors.primary.copyWithOpacity(.2)),
        color: context.colors.primary.copyWithOpacity(.1),
      ),
      child: Padding(
        padding: const Pad(
          vertical: 4,
          horizontal: 10,
        ),
        child: Text(
          title,
          style: context.bodyStyle.copyWith(
            color: context.colors.primary,
            fontSize: context.layoutDependantValue(desktop: 12, orElse: 10),
          ),
        ),
      ),
    );
  }
}
