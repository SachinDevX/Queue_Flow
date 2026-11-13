import 'package:flutter/material.dart';
import 'package:queueflow_ui/queueflow_ui.dart';
import 'app_logo.dart';

class AuthBackHeader extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback? onSkip;
  final String skipLabel;

  const AuthBackHeader({
    super.key,
    this.onBack,
    this.onSkip,
    this.skipLabel = 'Skip',
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: colors.surface,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: colors.border, width: 1.2),
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: onBack ?? () => Navigator.of(context).maybePop(),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0),
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                    color: colors.textPrimary,
                  ),
                ),
              ),
            ),
          ),
        ),
        const AppLogo(fontSize: 20),
        if (onSkip != null)
          TextButton(
            onPressed: onSkip,
            style: TextButton.styleFrom(
              foregroundColor: colors.accent,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              minimumSize: const Size(40, 40),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: Text(
              skipLabel,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        else
          const SizedBox(width: 40),
      ],
    );
  }
}
