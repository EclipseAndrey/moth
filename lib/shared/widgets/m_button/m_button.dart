import 'package:flutter/material.dart';
import 'package:moth/app/theme/m_theme.dart';
import 'package:moth/shared/widgets/m_loading_indicator/m_loading_indicator.dart';

class MButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? textColor;
  final Color? backgroundColor;
  final bool isLoading;

  const MButton({
    required this.child,
    super.key,
    this.onPressed,
    this.textColor,
    this.backgroundColor,
    this.isLoading = false,
  });

  const factory MButton.danger({
    required Widget child,
    VoidCallback? onPressed,
    bool isLoading,
  }) = _MDangerButton;

  const factory MButton.custom({
    required Widget child,
    VoidCallback? onPressed,
    EdgeInsets? padding,
    Color? backgroundColor,
    Color? foregroundColor,
  }) = _MCustomButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Theme.of(context).options.buttonMargin,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
        ),
        child: isLoading
            ? MLoadingIndicator(
                color: Theme.of(context).colors.counter,
              )
            : child,
      ),
    );
  }
}

class _MDangerButton extends MButton {
  const _MDangerButton({
    required super.child,
    super.onPressed,
    super.isLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Theme.of(context).options.buttonMargin,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colors.danger,
          elevation: 0,
          foregroundColor: Theme.of(context).colors.base,
        ),
        child: isLoading
            ? MLoadingIndicator(
                color: Theme.of(context).colors.counter,
              )
            : child,
      ),
    );
  }
}

class _MCustomButton extends MButton {
  final EdgeInsets? padding;
  final Color? foregroundColor;

  const _MCustomButton({
    required super.child,
    super.onPressed,
    this.padding,
    this.foregroundColor,
    super.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Theme.of(context).options.buttonMargin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor ?? Theme.of(context).colors.base,
          elevation: 0,
          disabledBackgroundColor:
              backgroundColor?.withOpacity(0.12) ?? Theme.of(context).colors.base.withOpacity(0.12),
        ),
        child: child,
      ),
    );
  }
}

class MSecondaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? textColor;
  final EdgeInsets? padding;
  final bool isLoading;

  const MSecondaryButton({
    required this.child,
    super.key,
    this.onPressed,
    this.textColor,
    this.padding,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? Theme.of(context).options.buttonMargin,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colors.base.withOpacity(0.12),
          foregroundColor: textColor ?? Theme.of(context).colors.base,
          elevation: 0,
          disabledBackgroundColor: Theme.of(context).colors.base.withOpacity(0.048),
          disabledForegroundColor: textColor ?? Theme.of(context).colors.base.withOpacity(0.4),
        ),
        child: isLoading
            ? MLoadingIndicator(
                color: Theme.of(context).colors.counter,
              )
            : child,
      ),
    );
  }
}

class OutlinedMButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? textColor;
  final Color? borderColor;
  final bool isLoading;

  const OutlinedMButton({
    required this.child,
    this.onPressed,
    this.textColor,
    this.borderColor,
    this.isLoading = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Theme.of(context).options.buttonMargin,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          foregroundColor: Theme.of(context).colors.secondary,
          side: BorderSide(
            color: borderColor ?? Theme.of(context).colors.primary,
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child: DefaultTextStyle.merge(
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: textColor),
          child: isLoading
              ? MLoadingIndicator(
                  color: Theme.of(context).colors.counter,
                )
              : child,
        ),
      ),
    );
  }
}

class MInkWell extends StatelessWidget {
  final Widget child;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;

  const MInkWell({
    required this.child,
    this.onTap,
    this.borderRadius,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: Theme.of(context).colors.secondary,
      borderRadius: borderRadius ?? BorderRadius.circular(12),
      child: child,
    );
  }
}
