import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///
/// The [ModalButton] is a wrapper over [ElevatedButton].
///
class ModalButton extends StatelessWidget {
  /// Called when the button is tapped or otherwise activated.
  ///
  /// If this callback and [onLongPress] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback? onPressed;

  /// Called when the button is long-pressed.
  ///
  /// If this callback and [onPressed] are null, then the button will be disabled.
  ///
  /// See also:
  ///
  ///  * [enabled], which is true if the button is enabled.
  final VoidCallback? onLongPress;

  /// Called when a pointer enters or exits the button response area.
  ///
  /// The value passed to the callback is true if a pointer has entered this
  /// part of the material and false if a pointer has exited this part of the
  /// material.
  final ValueChanged<bool>? onHover;

  /// Handler called when the focus changes.
  ///
  /// Called with true if this widget's node gains focus, and false if it loses
  /// focus.
  final ValueChanged<bool>? onFocusChange;

  /// Customizes this button's appearance.
  ///
  /// Non-null properties of this style override the corresponding
  /// properties in [themeStyleOf] and [defaultStyleOf]. [WidgetStateProperty]s
  /// that resolve to non-null values will similarly override the corresponding
  /// [WidgetStateProperty]s in [themeStyleOf] and [defaultStyleOf].
  ///
  /// Null by default.
  final ButtonStyle? style;

  /// {@macro flutter.widgets.Focus.focusNode}
  final FocusNode? focusNode;

  /// {@macro flutter.widgets.Focus.autofocus}
  final bool autofocus;

  /// {@macro flutter.material.Material.clipBehavior}
  ///
  /// Defaults to [Clip.none] unless [ButtonStyle.backgroundBuilder] or
  /// [ButtonStyle.foregroundBuilder] is specified. In those
  /// cases the default is [Clip.antiAlias].
  final Clip? clipBehavior;

  /// {@macro flutter.material.inkwell.statesController}
  final WidgetStatesController? statesController;

  /// Typically the button's label.
  ///
  /// {@macro flutter.widgets.ProxyWidget.child}
  final Widget? child;

  /// {@macro flutter.material.ButtonStyleButton.iconAlignment}
  final IconAlignment iconAlignment;

  final ElevatedButton _elevatedButton;

  ModalButton({
    super.key,
    this.style,
    this.child,
    this.onHover,
    this.focusNode,
    this.onPressed,
    this.onLongPress,
    this.clipBehavior,
    this.onFocusChange,
    this.statesController,
    this.autofocus = false,
    this.iconAlignment = IconAlignment.start,
  }) : _elevatedButton = ElevatedButton(
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          style: style,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          statesController: statesController,
          iconAlignment: iconAlignment,
          child: child,
        );

  @override
  Widget build(BuildContext context) {
    return _elevatedButton;
  }

  static ButtonStyle _getButtonStyle({Color? backgroundColor, Color? foregroundColor, TextStyle? textStyle}) {
    return ElevatedButton.styleFrom(
      elevation: 0,
      fixedSize: const Size.fromHeight(48),
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      textStyle: textStyle,
      padding: const EdgeInsets.symmetric(horizontal: 8),
    );
  }

  factory ModalButton.primary({
    required BuildContext context,
    required String text,
    VoidCallback? onPressed,
  }) {
    final ThemeData theme = Theme.of(context);

    return ModalButton(
      style: _getButtonStyle(
        backgroundColor: theme.colorScheme.primary,
        foregroundColor: theme.colorScheme.onPrimary,
        textStyle: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  factory ModalButton.secondary({
    required BuildContext context,
    required String text,
    VoidCallback? onPressed,
  }) {
    final ThemeData theme = Theme.of(context);

    return ModalButton(
      style: _getButtonStyle(
        backgroundColor: theme.colorScheme.secondary,
        foregroundColor: theme.colorScheme.onSecondary,
        textStyle: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  factory ModalButton.tertiary({
    required BuildContext context,
    required String text,
    VoidCallback? onPressed,
  }) {
    final ThemeData theme = Theme.of(context);

    return ModalButton(
      style: _getButtonStyle(
        backgroundColor: theme.colorScheme.tertiary,
        foregroundColor: theme.colorScheme.onTertiary,
        textStyle: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  factory ModalButton.error({
    required BuildContext context,
    required String text,
    VoidCallback? onPressed,
  }) {
    final ThemeData theme = Theme.of(context);

    return ModalButton(
      style: _getButtonStyle(
        backgroundColor: theme.colorScheme.error,
        foregroundColor: theme.colorScheme.onError,
        textStyle: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }

  /// Create a copy of the [ModalButton].
  ModalButton copyWith({
    VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
    WidgetStatesController? statesController,
    IconAlignment? iconAlignment,
    Widget? child,
  }) {
    return ModalButton(
      onPressed: onPressed ?? this.onPressed,
      onLongPress: onLongPress ?? this.onLongPress,
      onHover: onHover ?? this.onHover,
      onFocusChange: onFocusChange ?? this.onFocusChange,
      style: style ?? this.style,
      focusNode: focusNode ?? this.focusNode,
      autofocus: autofocus ?? this.autofocus,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      statesController: statesController ?? this.statesController,
      iconAlignment: iconAlignment ?? this.iconAlignment,
      child: child ?? this.child,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    return _elevatedButton.debugFillProperties(properties);
  }
}
