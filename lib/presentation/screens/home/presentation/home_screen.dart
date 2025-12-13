import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;
import 'package:super_sliver_list/super_sliver_list.dart';

import '../../../../core/constants/constants.dart';
import '../../../../core/di/injector.dart';
import '../../../../core/domain/bloc/theme_bloc/theme_bloc.dart';
import '../../../../core/domain/services/device_info_service.dart';
import '../../../../core/domain/services/toast_service.dart';
import '../../../../core/extensions/color_extensions.dart';
import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/extensions/list_controller_extensions.dart';
import '../../../../core/extensions/list_extensions.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/i18n/app_localization.g.dart';
import '../../../../core/utils/url_launcher/url_launcher.dart';
import '../../../../core/wrappers/web_scroll_wrapper.dart';
import '../../../ui/buttons/button.dart';
import '../../../ui/buttons/icon_button.dart';
import '../../../ui/buttons/text_button.dart';
import '../../../ui/logo/logo.dart';
import '../../../ui/utils/formatted_text.dart';
import '../../../ui/wrappers/measure_size_wrapper.dart';
import '../../../ui/wrappers/tappable.dart';
import '../../../ui/wrappers/web_padding.dart';
import '../domain/bloc/contact_form_bloc.dart';
import '../domain/models/project/project_model.dart';
import '../domain/models/skill/skill_model.dart';

part 'widgets/app_bar.dart';
part 'widgets/header/header.dart';
part 'widgets/header/widgets/header_background.dart';
part 'widgets/header/widgets/header_content.dart';
part 'widgets/skills/skills.dart';
part 'widgets/skills/widgets/skill_card.dart';
part 'widgets/skills/widgets/tech_stack_card.dart';
part 'widgets/projects/projects.dart';
part 'widgets/projects/widgets/project_card.dart';
part 'widgets/projects/widgets/projects_background.dart';
part 'widgets/projects/widgets/projects_content.dart';
part 'widgets/contact/contact.dart';
part 'widgets/contact/widgets/contact_form.dart';
part 'widgets/contact/widgets/contacts_block.dart';
part 'widgets/contact/widgets/contacts_content.dart';
part 'widgets/footer/footer.dart';
part '../domain/models/navigation_item.dart';

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
      appBar: _AppBar(
        animateTo: _animateTo,
        scrollController: _scrollController,
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: context.colors.background,
      body: WebScrollWrapper(
        controller: _scrollController,
        child: SuperListView(
          padding: Pad.zero,
          clipBehavior: Clip.none,
          controller: _scrollController,
          listController: _listController,
          physics: $<DeviceInfoService>().isMobileDevice ? null : const NeverScrollableScrollPhysics(),
          children: [
            _Header(animateTo: _animateTo),
            const _Skills(),
            const _Projects(),
            const _Contact(),
            const _Footer(),
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

  void _animateTo(_NavigationItem item) => _listController.animateTo(
        item.index * 2,
        scrollController: _scrollController,
      );
}
