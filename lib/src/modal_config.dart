import 'package:flutter/material.dart';

class ModalConfig {
  /// The [isDismissible] parameter allows the
  /// modal to be dismissed when user taps on the scrim.
  final bool isDismissible;

  /// The [isBackButtonDismissible] parameter allows
  /// the modal to be dismissed when the user
  /// taps on the back button (software/hardware).
  final bool isBackButtonDismissible;

  /// The [enableDrag] parameter allows the bottom sheet
  /// to be dragged up and down and dismissed by swiping downwards.
  /// If true, the bottom sheet can be dragged up and down and dismissed
  /// by swiping downwards. This applies to the content below the drag
  /// handle, if showDragHandle is true. Defaults is true.
  final bool enableDrag;

  /// The [showDragHandle] parameter specifies whether a drag handle is shown.
  /// The drag handle appears at the top of the bottom sheet. The default color is
  /// [ColorScheme.onSurfaceVariant] with an opacity of 0.4 and can be customized
  /// using dragHandleColor. The default size is `Size(32,4)` and can be customized
  /// with dragHandleSize. If null, then the value of [BottomSheetThemeData.showDragHandle]
  /// is used. If that is also null, defaults to false.
  final bool? showDragHandle;

  /// The [isScrollControlled] parameter specifies whether this is a
  /// route for a bottom sheet that will utilize [DraggableScrollableSheet].
  /// Consider setting this parameter to true if this bottom sheet has
  /// a scrollable child, such as a [ListView] or a [GridView], to make
  /// the bottom sheet draggable. Set this to true if you want to
  /// control the height of the bottom sheet.
  final bool isScrollControlled;

  /// The [sizeAnimationDuration] parameter specifies the duration to use
  /// when transitioning this widget's size to match the child's size.
  final Duration sizeAnimationDuration;

  /// The [backgroundColor] parameter specifies the modal's
  /// background color. Defaults to null and falls back to [Material]'s default.
  final Color? backgroundColor;

  /// The [elevation] parameter specifies the color of the shadow below the
  /// dialog or bottom sheet. If this property is null, the default value
  /// for [DialogTheme.elevation] or [BottomSheetThemeData.shadowColor] is used.
  /// If that is also null, the default value is transparent.
  final double? elevation;

  /// The [shape] parameter defines the shape of the modal.
  /// If this property is not provided, it falls back to [Material]'s default.
  final ShapeBorder? shape;

  /// The [clipBehavior] parameter specifies how the content will be clipped (or not)
  /// according to this option. See the enum [Clip] for details of all possible
  /// options and their common use cases. Defaults to [Clip.none].
  final Clip? clipBehavior;

  /// The [constraints] parameter defines the minimum and maximum sizes
  /// for a [BottomSheet]. If null, the ambient [ThemeData.bottomSheetTheme]'s
  /// [BottomSheetThemeData.constraints] will be used. If that
  /// is null and [ThemeData.useMaterial3] is true, then the bottom sheet
  /// will have a max width of 640dp. If [ThemeData.useMaterial3] is false,
  /// then the bottom sheet's size will be constrained by its parent
  /// (usually a [Scaffold]). In this case, consider limiting the width by
  /// setting smaller constraints for large screens. If constraints are
  /// specified (either in this property or in the theme), the bottom sheet
  /// will be aligned to the bottom-center of the available space.
  /// Otherwise, no alignment is applied.
  final BoxConstraints? constraints;

  /// The [barrierColor] parameter specifies the color of the
  /// modal barrier that darkens everything below the bottom sheet.
  /// Defaults to `Colors.black54` if not provided.
  final Color? barrierColor;

  /// The [useRootNavigator] parameter ensures that the root navigator is
  /// used to display the modal when set to `true`. This is useful in
  /// the case that a modal needs to be displayed above all other content
  /// but the caller is inside another [Navigator].
  final bool useRootNavigator;

  /// The [routeSettings] parameter sets the [RouteSettings] of the modal.
  /// This is particularly useful in the case that a user wants to observe
  /// [PopupRoute]s within a [NavigatorObserver].
  final RouteSettings? routeSettings;

  /// The animation controller that controls the bottom sheet's entrance and
  /// exit animations. The BottomSheet widget will manipulate the position
  /// of this animation, it is not just a passive observer.
  final AnimationController? transitionAnimationController;

  /// The [anchorPoint] parameter is used to pick the closest sub-screen.
  /// If the anchor point sits inside one of these sub-screens, then that
  /// sub-screen is picked. If not, then the sub-screen with the closest edge to
  /// the point is used.
  ///
  /// [Offset.zero] is the top-left corner of the available screen space. For a
  /// vertically split dual-screen device, this is the top-left corner of the
  /// left screen.
  ///
  /// When this is null, [Directionality] is used:
  ///   * for [TextDirection.ltr], [anchorPoint] is [Offset.zero], which will
  ///     cause the top-left sub-screen to be picked.
  ///   * for [TextDirection.rtl], [anchorPoint] is
  ///     `Offset(double.maxFinite, 0)`, which will cause the top-right
  ///     sub-screen to be picked.
  final Offset? anchorPoint;

  /// The [barrierLabel] parameter ensures that a semantics label is used
  /// for the barrier if it is [dismissible]. The semantics label is read out
  /// by accessibility tools (e.g. TalkBack on Android and VoiceOver on iOS)
  /// when the barrier is focused.
  final String? barrierLabel;

  const ModalConfig({
    this.isDismissible = false,
    this.isBackButtonDismissible = false,
    this.enableDrag = false,
    this.showDragHandle,
    this.isScrollControlled = true,
    this.useRootNavigator = false,
    this.sizeAnimationDuration = const Duration(milliseconds: 330),
    this.backgroundColor,
    this.elevation,
    this.shape,
    this.clipBehavior,
    this.constraints,
    this.barrierColor,
    this.routeSettings,
    this.transitionAnimationController,
    this.anchorPoint,
    this.barrierLabel,
  });

  ModalConfig copyWith({
    bool? isDismissible,
    bool? isBackButtonDismissible,
    bool? enableDrag,
    bool? showDragHandle,
    bool? isScrollControlled,
    Duration? sizeAnimationDuration,
    Color? backgroundColor,
    double? elevation,
    ShapeBorder? shape,
    Clip? clipBehavior,
    BoxConstraints? constraints,
    Color? barrierColor,
    bool? useRootNavigator,
    RouteSettings? routeSettings,
    AnimationController? transitionAnimationController,
    Offset? anchorPoint,
    String? barrierLabel,
  }) {
    return ModalConfig(
      isDismissible: isDismissible ?? this.isDismissible,
      isBackButtonDismissible: isBackButtonDismissible ?? this.isBackButtonDismissible,
      enableDrag: enableDrag ?? this.enableDrag,
      showDragHandle: showDragHandle ?? this.showDragHandle,
      isScrollControlled: isScrollControlled ?? this.isScrollControlled,
      sizeAnimationDuration: sizeAnimationDuration ?? this.sizeAnimationDuration,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      elevation: elevation ?? this.elevation,
      shape: shape ?? this.shape,
      clipBehavior: clipBehavior ?? this.clipBehavior,
      constraints: constraints ?? this.constraints,
      barrierColor: barrierColor ?? this.barrierColor,
      useRootNavigator: useRootNavigator ?? this.useRootNavigator,
      routeSettings: routeSettings ?? this.routeSettings,
      transitionAnimationController: transitionAnimationController ?? this.transitionAnimationController,
      anchorPoint: anchorPoint ?? this.anchorPoint,
      barrierLabel: barrierLabel ?? this.barrierLabel,
    );
  }
}
