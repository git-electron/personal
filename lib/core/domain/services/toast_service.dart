import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:shadcn_flutter/shadcn_flutter.dart' as shadcn;

import '../../i18n/app_localization.g.dart';

@singleton
class ToastService {
  shadcn.ToastOverlay showToast(
    BuildContext context, {
    required String title,
    String? subtitle,
  }) {
    return shadcn.showToast(
      context: context,
      builder: (context, overlay) => shadcn.SurfaceCard(
        child: shadcn.Basic(
          title: Text(title),
          subtitle: subtitle != null ? Text(subtitle) : null,
          trailing: shadcn.PrimaryButton(
            size: shadcn.ButtonSize.small,
            onPressed: overlay.close,
            child: Text(context.t.general.ok),
          ),
        ),
      ),
    );
  }
}
