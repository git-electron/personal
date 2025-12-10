import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/domain/services/device_info_service.dart';
import '../../../../core/extensions/color_extensions.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/list_extensions.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/i18n/app_localization.g.dart';
import '../../../../core/theme/theme_extensions.dart';
import '../../../../core/utils/url_launcher/url_launcher.dart';
import '../../../../core/wrappers/web_scroll_wrapper.dart';
import '../../../ui/buttons/button.dart';
import '../../../ui/buttons/icon_button.dart';
import '../../../ui/buttons/text_button.dart';
import '../../../ui/utils/formatted_text.dart';
import '../../../ui/wrappers/measure_size_wrapper.dart';
import '../../../ui/wrappers/web_padding.dart';
import '../domain/models/project_model.dart';
import '../domain/models/skill_model.dart';

part 'widgets/header/header.dart';
part 'widgets/header/widgets/header_background.dart';
part 'widgets/header/widgets/header_content.dart';
part 'widgets/projects/projects.dart';
part 'widgets/projects/widgets/project_card.dart';
part 'widgets/projects/widgets/projects_background.dart';
part 'widgets/projects/widgets/projects_content.dart';
part 'widgets/skills/skills.dart';
part 'widgets/skills/widgets/skill_card.dart';
part 'widgets/skills/widgets/tech_stack_card.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final ListController _listController;
  late final ScrollController _scrollController;

  @override
  void initState() {
    _listController = ListController();
    _scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _listController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: context.colors.background,
      body: WebScrollWrapper(
        controller: _scrollController,
        child: SuperListView(
          clipBehavior: Clip.none,
          controller: _scrollController,
          listController: _listController,
          physics: $<DeviceInfoService>().isMobileDevice ? null : const NeverScrollableScrollPhysics(),
          children: [
            const _Header(),
            const _Skills(),
            const _Projects(),
          ].alternateWith(
            Divider(
              height: 0,
              thickness: 1,
              color: context.colors.onBackground.copyWithOpacity(.2),
            ),
          ),
        ),
      ),
    );
  }
}
