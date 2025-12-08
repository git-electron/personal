import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:landing/presentation/ui/utils/formatted_text.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

import '../../../core/extensions/context_extensions.dart';
import '../../../core/gen/assets.gen.dart';
import '../../../core/i18n/app_localization.g.dart';
import '../../../core/theme/theme_extensions.dart';
import '../../../core/wrappers/web_scroll_wrapper.dart';
import '../../ui/wrappers/web_padding.dart';

part 'widgets/header/header.dart';
part 'widgets/header/widgets/greeting.dart';

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
      extendBodyBehindAppBar: true,
      backgroundColor: context.colors.background,
      body: WebScrollWrapper(
        controller: _scrollController,
        child: SuperListView(
          controller: _scrollController,
          listController: _listController,
          children: [
            WebPaddingWrapper(child: _Header()),
          ],
        ),
      ),
    );
  }
}
