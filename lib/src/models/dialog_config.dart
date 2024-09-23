import 'package:flutter/material.dart';

class DialogConfig {
  /// The `barrierDismissible` argument is used to indicate whether tapping on the
  /// barrier will dismiss the dialog. It is `true` by default and cannot be `null`.
  final bool barrierDismissible;

  /// The `barrierColor` argument is used to specify the color of the modal
  /// barrier that darkens everything below the dialog. If `null`, the default
  /// color `Colors.black54` is used.
  final Color? barrierColor;

  /// The semantic label used for a dismissible barrier.
  ///
  /// If the barrier is dismissible, this label will be read out if
  /// accessibility tools (like VoiceOver on iOS) focus on the barrier.
  ///
  /// The 'barrierLabel' parameter can be used to set a custom barrier label.
  /// Will default to [MaterialLocalizations.modalBarrierDismissLabel] of context
  /// if not set.
  final String? barrierLabel;

  /// The `useSafeArea` argument is used to indicate if the dialog should only
  /// display in 'safe' areas of the screen not used by the operating system
  /// (see [SafeArea] for more details). It is `true` by default, which means
  /// the dialog will not overlap operating system areas. If it is set to `false`
  /// the dialog will only be constrained by the screen size. It can not be `null`.
  final bool useSafeArea;

  /// The `useRootNavigator` argument is used to determine whether to push the
  /// dialog to the [Navigator] furthest from or nearest to the given `context`.
  /// By default, `useRootNavigator` is `true` and the dialog route created by
  /// this method is pushed to the root navigator. It can not be `null`.
  final bool useRootNavigator;

  /// The `routeSettings` argument is passed to [showGeneralDialog],
  /// see [RouteSettings] for details.
  final RouteSettings? routeSettings;

  /// The anchor point used to pick the closest sub-screen.
  ///
  /// If the anchor point sits inside one of these sub-screens, then that
  /// sub-screen is picked. If not, then the sub-screen with the closest edge to
  /// the point is used.
  ///
  /// [Offset.zero] is the top-left corner of the available screen space. For a
  /// vertically split dual-screen device, this is the top-left corner of the
  /// left screen.
  ///
  /// When this is null, [Directionality] is used:
  ///
  ///   * for [TextDirection.ltr], [anchorPoint] is [Offset.zero], which will
  ///     cause the top-left sub-screen to be picked.
  ///   * for [TextDirection.rtl], [anchorPoint] is
  ///     `Offset(double.maxFinite, 0)`, which will cause the top-right
  ///     sub-screen to be picked.
  final Offset? anchorPoint;

  /// If not null, the `traversalEdgeBehavior` argument specifies the transfer of
  /// focus beyond the first and the last items of the dialog route. By default,
  /// [TraversalEdgeBehavior.closedLoop] is used, because it's typical for dialogs
  /// to allow users to cycle through dialog widgets without leaving the dialog.
  final TraversalEdgeBehavior? traversalEdgeBehavior;

  /// The background color of the surface of this [Dialog].
  ///
  /// This sets the [Material.color] on this [Dialog]'s [Material].
  ///
  /// If `null`, [ColorScheme.surfaceContainerHigh] is used in Material 3.
  final Color? backgroundColor;

  /// The z-coordinate of this [Dialog].
  ///
  /// Controls how far above the parent the dialog will appear. Elevation is
  /// represented by a drop shadow if [shadowColor] is non null,
  /// and a surface tint overlay on the background color if [surfaceTintColor] is
  /// non null.
  ///
  /// If null then [DialogTheme.elevation] is used, and if that is null then
  /// the elevation will match the Material Design specification for Dialogs.
  ///
  /// See also:
  ///   * [Material.elevation], which describes how [elevation] effects the
  ///     drop shadow or surface tint overlay.
  ///   * [shadowColor], color of the drop shadow used to indicate the elevation.
  ///   * [surfaceTintColor], color of an overlay on top of the background
  ///     color used to indicate the elevation.
  ///   * <https://m3.material.io/components/dialogs/overview>, the Material
  ///     Design specification for dialogs.
  final double? elevation;

  /// The color used to paint a drop shadow under the dialog's [Material],
  /// which reflects the dialog's [elevation].
  ///
  /// If null and [ThemeData.useMaterial3] is true then no drop shadow will
  /// be rendered.
  ///
  /// If null and [ThemeData.useMaterial3] is false then it will default to
  /// [ThemeData.shadowColor].
  ///
  /// See also:
  ///   * [Material.shadowColor], which describes how the drop shadow is painted.
  ///   * [elevation], which affects how the drop shadow is painted.
  ///   * [surfaceTintColor], which can be used to indicate elevation through
  ///     tinting the background color.
  final Color? shadowColor;

  /// The color used as a surface tint overlay on the dialog's background color,
  /// which reflects the dialog's [elevation].
  ///
  /// If [ThemeData.useMaterial3] is false property has no effect.
  ///
  /// This is not recommended for use. [Material 3 spec](https://m3.material.io/styles/color/the-color-system/color-roles)
  /// introduced a set of tone-based surfaces and surface containers in its [ColorScheme],
  /// which provide more flexibility. The intention is to eventually remove surface tint color from
  /// the framework.
  ///
  /// defaults to [Colors.transparent].
  ///
  /// To disable this feature, set [surfaceTintColor] to [Colors.transparent].
  ///
  /// See also:
  ///   * [Material.surfaceTintColor], which describes how the surface tint will
  ///     be applied to the background color of the dialog.
  ///   * [elevation], which affects the opacity of the surface tint.
  ///   * [shadowColor], which can be used to indicate elevation through
  ///     a drop shadow.
  final Color? surfaceTintColor;

  /// The duration of the animation to show when the system keyboard intrudes
  /// into the space that the dialog is placed in.
  ///
  /// Defaults to 100 milliseconds when [Dialog] is used, and [Duration.zero]
  /// when [Dialog.fullscreen] is used.
  final Duration insetAnimationDuration;

  /// The curve to use for the animation shown when the system keyboard intrudes
  /// into the space that the dialog is placed in.
  ///
  /// Defaults to [Curves.decelerate].
  final Curve insetAnimationCurve;

  /// The amount of padding added to [MediaQueryData.viewInsets] on the outside
  /// of the dialog. This defines the minimum space between the screen's edges
  /// and the dialog.
  ///
  /// Defaults to `EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0)`.
  final EdgeInsets? insetPadding;

  /// Controls how the contents of the dialog are clipped (or not) to the given
  /// [shape].
  ///
  /// See the enum [Clip] for details of all possible options and their common
  /// use cases.
  ///
  /// If null, then [DialogTheme.clipBehavior] is used. If that is also null,
  /// defaults to [Clip.none].
  final Clip? clipBehavior;

  /// The shape of this dialog's border.
  ///
  /// Defines the dialog's [Material.shape].
  ///
  /// The default shape is a [RoundedRectangleBorder] with a radius of 4.0
  final ShapeBorder? shape;

  /// How to align the [Dialog].
  ///
  /// If null, then [DialogTheme.alignment] is used. If that is also null, the
  /// default is [Alignment.center].
  final AlignmentGeometry? alignment;

  /// The widget below this widget in the tree.
  final Widget? child;

  const DialogConfig({
    this.barrierDismissible = true,
    this.barrierColor,
    this.barrierLabel,
    this.useSafeArea = true,
    this.useRootNavigator = true,
    this.routeSettings,
    this.anchorPoint,
    this.traversalEdgeBehavior,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.surfaceTintColor,
    this.insetAnimationDuration = const Duration(milliseconds: 100),
    this.insetAnimationCurve = Curves.decelerate,
    this.insetPadding,
    this.clipBehavior,
    this.shape,
    this.alignment,
    this.child,
  });

  /// Create a copy of the [DialogConfig].
  DialogConfig copyWith({
    bool? barrierDismissible,
    Color? barrierColor,
    String? barrierLabel,
    bool? useSafeArea,
    bool? useRootNavigator,
    RouteSettings? routeSettings,
    Offset? anchorPoint,
    TraversalEdgeBehavior? traversalEdgeBehavior,
    Color? backgroundColor,
    double? elevation,
    Color? shadowColor,
    Color? surfaceTintColor,
    Duration? insetAnimationDuration,
    Curve? insetAnimationCurve,
    EdgeInsets? insetPadding,
    Clip? clipBehavior,
    ShapeBorder? shape,
    AlignmentGeometry? alignment,
    Widget? child,
  }) {
    return DialogConfig(
      barrierDismissible: barrierDismissible ?? this.barrierDismissible,
      barrierColor: barrierColor ?? this.barrierColor,
      barrierLabel: barrierLabel ?? this.barrierLabel,
      useSafeArea: useSafeArea ?? this.useSafeArea,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      routeSettings: routeSettings ?? this.routeSettings,
      anchorPoint: anchorPoint ?? this.anchorPoint,
      traversalEdgeBehavior: traversalEdgeBehavior ?? this.traversalEdgeBehavior,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      shadowColor: shadowColor ?? this.shadowColor,
      surfaceTintColor: surfaceTintColor ?? this.surfaceTintColor,
      insetAnimationDuration: insetAnimationDuration ?? this.insetAnimationDuration,
      insetAnimationCurve: insetAnimationCurve ?? this.insetAnimationCurve,
      insetPadding: insetPadding ?? this.insetPadding,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      shape: shape ?? this.shape,
      alignment: alignment ?? this.alignment,
      child: child ?? this.child,
    );
  }

  @override
  int get hashCode {
    return Object.hashAll([
      barrierDismissible,
      barrierColor,
      barrierLabel,
      useSafeArea,
      useRootNavigator,
      routeSettings,
      anchorPoint,
      traversalEdgeBehavior,
      backgroundColor,
      elevation,
      shadowColor,
      surfaceTintColor,
      insetAnimationDuration,
      insetAnimationCurve,
      insetPadding,
      clipBehavior,
      shape,
      alignment,
      child,
    ]);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is DialogConfig &&
            runtimeType == other.runtimeType &&
            barrierDismissible == other.barrierDismissible &&
            barrierColor == other.barrierColor &&
            barrierLabel == other.barrierLabel &&
            useSafeArea == other.useSafeArea &&
            useRootNavigator == other.useRootNavigator &&
            routeSettings == other.routeSettings &&
            anchorPoint == other.anchorPoint &&
            traversalEdgeBehavior == other.traversalEdgeBehavior &&
            backgroundColor == other.backgroundColor &&
            elevation == other.elevation &&
            shadowColor == other.shadowColor &&
            surfaceTintColor == other.surfaceTintColor &&
            insetAnimationDuration == other.insetAnimationDuration &&
            insetAnimationCurve == other.insetAnimationCurve &&
            insetPadding == other.insetPadding &&
            clipBehavior == other.clipBehavior &&
            shape == other.shape &&
            alignment == other.alignment &&
            child == other.child;
  }
}
