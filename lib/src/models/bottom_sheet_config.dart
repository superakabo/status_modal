import 'package:flutter/material.dart';

class BottomSheetConfig {
  /// The bottom sheet's background color.
  ///
  /// Defines the bottom sheet's [Material.color].
  ///
  /// If this property is not provided, it falls back to [Material]'s default.
  final Color? backgroundColor;

  /// The semantic label used for a dismissible barrier.
  ///
  /// If the barrier is dismissible, this label will be read out if
  /// accessibility tools (like VoiceOver on iOS) focus on the barrier.
  ///
  /// The 'barrierLabel' parameter can be used to set a custom barrier label.
  /// Will default to [MaterialLocalizations.modalBarrierDismissLabel] of context
  /// if not set.
  final String? barrierLabel;

  /// The z-coordinate at which to place this material relative to its parent.
  ///
  /// This controls the size of the shadow below the material.
  ///
  /// Defaults to 0, must not be negative.
  final double? elevation;

  /// The shape of the bottom sheet.
  ///
  /// Defines the bottom sheet's [Material.shape].
  ///
  /// If this property is not provided, it falls back to [Material]'s default.
  final ShapeBorder? shape;

  /// Defines the bottom sheet's [Material.clipBehavior].
  ///
  /// Use this property to enable clipping of content when the bottom sheet has
  /// a custom [shape] and the content can extend past this shape. For example,
  /// a bottom sheet with rounded corners and an edge-to-edge [Image] at the
  /// top.
  ///
  /// If this property is null, the [BottomSheetThemeData.clipBehavior] of
  /// [ThemeData.bottomSheetTheme] is used. If that's null, the behavior defaults to [Clip.none]
  /// will be [Clip.none].
  final Clip? clipBehavior;

  /// Defines minimum and maximum sizes for a [BottomSheet].
  ///
  /// If null, the ambient [ThemeData.bottomSheetTheme]'s
  /// [BottomSheetThemeData.constraints] will be used. If that
  /// is null and [ThemeData.useMaterial3] is true, then the bottom sheet
  /// will have a max width of 640dp. If [ThemeData.useMaterial3] is false, then
  /// the bottom sheet's size will be constrained by its parent
  /// (usually a [Scaffold]). In this case, consider limiting the width by
  /// setting smaller constraints for large screens.
  ///
  /// If constraints are specified (either in this property or in the
  /// theme), the bottom sheet will be aligned to the bottom-center of
  /// the available space. Otherwise, no alignment is applied.
  final BoxConstraints? constraints;

  /// Specifies the color of the modal barrier that darkens everything below the
  /// bottom sheet.
  ///
  /// Defaults to `Colors.black54` if not provided.
  final Color? barrierColor;

  /// Specifies whether this is a route for a bottom sheet that will utilize
  /// [DraggableScrollableSheet].
  ///
  /// Consider setting this parameter to true if this bottom sheet has
  /// a scrollable child, such as a [ListView] or a [GridView],
  /// to have the bottom sheet be draggable.
  final bool isScrollControlled;

  /// The max height constraint ratio for the bottom sheet
  /// when [isScrollControlled] is set to false,
  /// no ratio will be applied when [isScrollControlled] is set to true.
  ///
  /// Defaults to 9 / 16.
  final double scrollControlDisabledMaxHeightRatio;

  /// The `useRootNavigator` parameter ensures that the root navigator is used to
  /// display the [BottomSheet] when set to `true`. This is useful in the case
  /// that a modal [BottomSheet] needs to be displayed above all other content
  /// but the caller is inside another [Navigator].
  ///
  /// Returns a `Future` that resolves to the value (if any) that was passed to
  /// [Navigator.pop] when the modal bottom sheet was closed.
  final bool useRootNavigator;

  /// Specifies whether the bottom sheet will be dismissed
  /// when user taps on the scrim.
  ///
  /// If true, the bottom sheet will be dismissed when user taps on the scrim.
  ///
  /// Defaults to true.
  final bool isDismissible;

  /// Specifies whether the bottom sheet can be dragged up and down
  /// and dismissed by swiping downwards.
  ///
  /// If true, the bottom sheet can be dragged up and down and dismissed by
  /// swiping downwards.
  ///
  /// This applies to the content below the drag handle, if showDragHandle is true.
  ///
  /// Defaults is true.
  final bool enableDrag;

  /// Specifies whether a drag handle is shown.
  ///
  /// The drag handle appears at the top of the bottom sheet. The default color is
  /// [ColorScheme.onSurfaceVariant] with an opacity of 0.4 and can be customized
  /// using dragHandleColor. The default size is `Size(32,4)` and can be customized
  /// with dragHandleSize.
  ///
  /// If null, then the value of [BottomSheetThemeData.showDragHandle] is used. If
  /// that is also null, defaults to false.
  final bool? showDragHandle;

  /// Whether to avoid system intrusions on the top, left, and right.
  ///
  /// If true, a [SafeArea] is inserted to keep the bottom sheet away from
  /// system intrusions at the top, left, and right sides of the screen.
  ///
  /// If false, the bottom sheet will extend through any system intrusions
  /// at the top, left, and right.
  ///
  /// If false, then moreover [MediaQuery.removePadding] will be used
  /// to remove top padding, so that a [SafeArea] widget inside the bottom
  /// sheet will have no effect at the top edge. If this is undesired, consider
  /// setting [useSafeArea] to true. Alternatively, wrap the [SafeArea] in a
  /// [MediaQuery] that restates an ambient [MediaQueryData] from outside [builder].
  ///
  /// In either case, the bottom sheet extends all the way to the bottom of
  /// the screen, including any system intrusions.
  ///
  /// The default is false.
  final bool useSafeArea;

  /// The optional `settings` parameter sets the [RouteSettings] of the modal bottom sheet
  /// sheet. This is particularly useful in the case that a user wants to observe
  /// [PopupRoute]s within a [NavigatorObserver].
  final RouteSettings? routeSettings;

  /// The animation controller that controls the bottom sheet's entrance and
  /// exit animations.
  ///
  /// The BottomSheet widget will manipulate the position of this animation, it
  /// is not just a passive observer.
  final AnimationController? transitionAnimationController;

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

  /// Used to override the modal bottom sheet animation duration and reverse
  /// animation duration.
  ///
  /// If [AnimationStyle.duration] is provided, it will be used to override
  /// the modal bottom sheet animation duration in the underlying
  /// [BottomSheet.createAnimationController].
  ///
  /// If [AnimationStyle.reverseDuration] is provided, it will be used to
  /// override the modal bottom sheet reverse animation duration in the
  /// underlying [BottomSheet.createAnimationController].
  ///
  /// To disable the modal bottom sheet animation, use [AnimationStyle.noAnimation].
  final AnimationStyle? sheetAnimationStyle;

  const BottomSheetConfig({
    this.backgroundColor,
    this.barrierLabel,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.barrierColor,
    this.isScrollControlled = false,
    this.scrollControlDisabledMaxHeightRatio = (9.0 / 16.0),
    this.useRootNavigator = false,
    this.isDismissible = true,
    this.enableDrag = true,
    this.showDragHandle,
    this.useSafeArea = false,
    this.routeSettings,
    this.transitionAnimationController,
    this.anchorPoint,
    this.sheetAnimationStyle,
  });

  /// Create a copy of the [BottomSheetConfig].
  BottomSheetConfig copyWith({
    Color? backgroundColor,
    String? barrierLabel,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool? isScrollControlled,
    double? scrollControlDisabledMaxHeightRatio,
    bool? useRootNavigator,
    bool? isDismissible,
    bool? enableDrag,
    bool? showDragHandle,
    bool? useSafeArea,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    AnimationStyle? sheetAnimationStyle,
  }) {
    return BottomSheetConfig(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      barrierLabel: barrierLabel ?? this.barrierLabel,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      constraints: constraints ?? this.constraints,
      barrierColor: barrierColor ?? this.barrierColor,
      isScrollControlled: isScrollControlled ?? this.isScrollControlled,
      scrollControlDisabledMaxHeightRatio:
          scrollControlDisabledMaxHeightRatio ?? this.scrollControlDisabledMaxHeightRatio,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      isDismissible: isDismissible ?? this.isDismissible,
      enableDrag: enableDrag ?? this.enableDrag,
      showDragHandle: showDragHandle ?? this.showDragHandle,
      useSafeArea: useSafeArea ?? this.useSafeArea,
      routeSettings: routeSettings ?? this.routeSettings,
      transitionAnimationController: transitionAnimationController ?? this.transitionAnimationController,
      anchorPoint: anchorPoint ?? this.anchorPoint,
      sheetAnimationStyle: sheetAnimationStyle ?? sheetAnimationStyle,
    );
  }

  @override
  int get hashCode {
    return Object.hashAll([
      isDismissible,
      enableDrag,
      showDragHandle,
      isScrollControlled,
      backgroundColor,
      elevation,
      shape,
      clipBehavior,
      constraints,
      barrierColor,
      useRootNavigator,
      routeSettings,
      transitionAnimationController,
      anchorPoint,
      barrierLabel,
      scrollControlDisabledMaxHeightRatio,
      useSafeArea,
      sheetAnimationStyle,
    ]);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is BottomSheetConfig &&
            runtimeType == other.runtimeType &&
            isDismissible == other.isDismissible &&
            enableDrag == other.enableDrag &&
            showDragHandle == other.showDragHandle &&
            isScrollControlled == other.isScrollControlled &&
            backgroundColor == other.backgroundColor &&
            elevation == other.elevation &&
            shape == other.shape &&
            clipBehavior == other.clipBehavior &&
            constraints == other.constraints &&
            barrierColor == other.barrierColor &&
            useRootNavigator == other.useRootNavigator &&
            routeSettings == other.routeSettings &&
            transitionAnimationController == other.transitionAnimationController &&
            anchorPoint == other.anchorPoint &&
            barrierLabel == other.barrierLabel &&
            scrollControlDisabledMaxHeightRatio == other.scrollControlDisabledMaxHeightRatio &&
            useSafeArea == other.useSafeArea &&
            sheetAnimationStyle == other.sheetAnimationStyle;
  }
}
