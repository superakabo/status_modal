import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Predefined button styles enum.
enum _ButtonStyle {
  primary,
  secondary,
  tertiary,
  error,
  none;
}

///
/// The [ModalButton] is a wrapper over [ElevatedButton].
///
class ModalButton extends StatefulWidget {
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

  /// The predefined button style to use.
  final _ButtonStyle _buttonStyle;

  const ModalButton({
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
  }) : _buttonStyle = _ButtonStyle.none;

  ModalButton._(String text, VoidCallback? onPressedEvent, _ButtonStyle buttonStyle)
      : style = null,
        child = Text(text),
        onHover = null,
        focusNode = null,
        onPressed = onPressedEvent,
        onLongPress = null,
        clipBehavior = null,
        onFocusChange = null,
        statesController = null,
        autofocus = false,
        iconAlignment = IconAlignment.start,
        _buttonStyle = buttonStyle;

  /// An elevated button widget that uses a primary color scheme and bodyMedium text style.
  factory ModalButton.primary({required String text, VoidCallback? onPressed}) =>
      ModalButton._(text, onPressed, _ButtonStyle.primary);

  /// An elevated button widget that uses a secondary color scheme and bodyMedium text style.
  factory ModalButton.secondary({required String text, VoidCallback? onPressed}) =>
      ModalButton._(text, onPressed, _ButtonStyle.secondary);

  /// An elevated button widget that uses a tertiary color scheme and bodyMedium text style.
  factory ModalButton.tertiary({required String text, VoidCallback? onPressed}) =>
      ModalButton._(text, onPressed, _ButtonStyle.tertiary);

  /// An elevated button widget that uses an error color scheme and bodyMedium text style.
  factory ModalButton.error({required String text, VoidCallback? onPressed}) =>
      ModalButton._(text, onPressed, _ButtonStyle.error);

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
  State<ModalButton> createState() => _ModalButtonState();
}

class _ModalButtonState extends State<ModalButton> {
  ElevatedButton? _button;

  @override
  void dispose() {
    _button = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late final ThemeData theme = Theme.of(context);

    late final ButtonStyle predefinedStyles = ElevatedButton.styleFrom(
      elevation: 0,
      fixedSize: const Size.fromHeight(48),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      backgroundColor: switch (widget._buttonStyle) {
        _ButtonStyle.primary => theme.colorScheme.primary,
        _ButtonStyle.secondary => theme.colorScheme.secondary,
        _ButtonStyle.tertiary => theme.colorScheme.tertiary,
        _ButtonStyle.error => theme.colorScheme.error,
        _ButtonStyle.none => null,
      },
      foregroundColor: switch (widget._buttonStyle) {
        _ButtonStyle.primary => theme.colorScheme.onPrimary,
        _ButtonStyle.secondary => theme.colorScheme.onSecondary,
        _ButtonStyle.tertiary => theme.colorScheme.onTertiary,
        _ButtonStyle.error => theme.colorScheme.onError,
        _ButtonStyle.none => null,
      },
      textStyle: theme.textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.bold),
    );

    _button = ElevatedButton(
      onPressed: widget.onPressed,
      onLongPress: widget.onLongPress,
      onHover: widget.onHover,
      onFocusChange: widget.onFocusChange,
      style: widget.style ?? predefinedStyles,
      focusNode: widget.focusNode,
      autofocus: widget.autofocus,
      clipBehavior: widget.clipBehavior,
      statesController: widget.statesController,
      iconAlignment: widget.iconAlignment,
      child: widget.child,
    );

    return _button!;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    return _button?.debugFillProperties(properties);
  }
}
