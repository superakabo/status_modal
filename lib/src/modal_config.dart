import 'package:flutter/material.dart';

class ModalConfig {
  /// The [isDismissible] parameter specifies whether the
  /// bottom sheet will be dismissed when user taps on the scrim.
  final bool isDismissible;

  /// The [isBackButtonDismissible] parameter specifies
  /// whether the modal sheet will be dismissed when user
  /// taps on the back button (software/hardware).
  final bool isBackButtonDismissible;

  /// The [enableDrag] parameter specifies whether the bottom sheet
  /// can be dragged up and down and dismissed by swiping downwards.
  /// If true, the bottom sheet can be dragged up and down and dismissed
  /// by swiping downwards. This applies to the content below the drag
  /// handle, if showDragHandle is true. Defaults is true.
  final bool enableDrag;

  final bool isScrollControlled;
  final Duration animationDuration;
  final Color? backgroundColor;
  final double? elevation;

  /// The [shape] parameter defines the shape of the modal.
  /// If this property is not provided, it falls back to [Material]'s default.
  final ShapeBorder? shape;

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

  final bool useRootNavigator;
  final RouteSettings? routeSettings;
  final AnimationController? transitionAnimationController;
  final Offset? anchorPoint;
  final String? barrierLabel;

  const ModalConfig({
    this.isDismissible = false,
    this.isBackButtonDismissible = false,
    this.enableDrag = false,
    this.isScrollControlled = true,
    this.useRootNavigator = false,
    this.animationDuration = const Duration(milliseconds: 330),
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
    bool? isScrollControlled,
    Duration? animationDuration,
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
      isScrollControlled: isScrollControlled ?? this.isScrollControlled,
      animationDuration: animationDuration ?? this.animationDuration,
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

void mm(BuildContext context, WidgetBuilder builder) {
  showModalBottomSheet(context: context, builder: builder);
}
