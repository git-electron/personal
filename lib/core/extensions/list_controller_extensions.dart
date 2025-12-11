import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:super_sliver_list/super_sliver_list.dart';

extension ListControllerExtensions on ListController {
  void animateTo(int index, {required ScrollController scrollController}) {
    animateToItem(
      index: index,
      scrollController: scrollController,
      alignment: 0,
      duration: (estimatedDistance) => 1.seconds,
      curve: (estimatedDistance) => Curves.easeInOut,
    );
  }
}
