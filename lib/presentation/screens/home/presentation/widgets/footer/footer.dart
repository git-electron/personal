part of '../../home_screen.dart';

class _Footer extends StatelessWidget {
  const _Footer();

  @override
  Widget build(BuildContext context) {
    return WebPaddingWrapper(
      child: Padding(
        padding: const Pad(vertical: 50),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              spacing: context.dependsOnLayout(mobile: 10, orElse: 20),
              children: [
                Logo(size: context.dependsOnLayout(desktop: 50, tablet: 40, mobile: 30)),
                Text(context.t.home.footer.title, style: context.bodyStyle),
              ],
            ),
            Text(
              context.t.home.footer.description,
              style: context.bodyStyle.copyWith(color: context.colors.text.copyWithOpacity(.5)),
            ),
            const Gap(10),
            Row(
              spacing: context.dependsOnLayout(desktop: 30, tablet: 15, mobile: 8),
              children: [
                AppButton(
                  onTap: () => $<UrlLauncher>().launchUrlString(Constants.websiteRepoUrl),
                  text: context.t.home.footer.button,
                ),
                Container(
                  height: context.dependsOnLayout(desktop: 20, orElse: 16),
                  width: 2,
                  margin: const Pad(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(1),
                    color: context.colors.onBackground.copyWithOpacity(.75),
                  ),
                ),
                const _Contacts(shouldDependsOnLayout: false),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
