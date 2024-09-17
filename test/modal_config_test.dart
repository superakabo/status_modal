import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:status_modal/status_modal.dart';

void main() {
  test('test the default values for ModalConfig', () {
    const config = ModalConfig();
    expect(config.isDismissible, isFalse);
    expect(config.isBackButtonDismissible, isFalse);
    expect(config.enableDrag, isFalse);
    expect(config.showDragHandle, isNull);
    expect(config.isScrollControlled, isTrue);
    expect(config.backgroundColor, isNull);
    expect(config.elevation, isNull);
    expect(config.shape, isNull);
    expect(config.clipBehavior, isNull);
    expect(config.constraints, isNull);
    expect(config.barrierColor, isNull);
    expect(config.useRootNavigator, isFalse);
    expect(config.sizeAnimationDuration, equals(const Duration(milliseconds: 330)));
    expect(config.routeSettings, isNull);
    expect(config.transitionAnimationController, isNull);
    expect(config.anchorPoint, isNull);
    expect(config.barrierLabel, isNull);
    expect(config.mediaQuery, equals(const MediaQueryData()));
  });

  test('test the copyWith function for ModalConfig without any modification', () {
    final ModalConfig config = const ModalConfig().copyWith();
    expect(config.isDismissible, isFalse);
    expect(config.isBackButtonDismissible, isFalse);
    expect(config.enableDrag, isFalse);
    expect(config.showDragHandle, isNull);
    expect(config.isScrollControlled, isTrue);
    expect(config.backgroundColor, isNull);
    expect(config.elevation, isNull);
    expect(config.shape, isNull);
    expect(config.clipBehavior, isNull);
    expect(config.constraints, isNull);
    expect(config.barrierColor, isNull);
    expect(config.useRootNavigator, isFalse);
    expect(config.sizeAnimationDuration, equals(const Duration(milliseconds: 330)));
    expect(config.routeSettings, isNull);
    expect(config.transitionAnimationController, isNull);
    expect(config.anchorPoint, isNull);
    expect(config.barrierLabel, isNull);
    expect(config.mediaQuery, equals(const MediaQueryData()));
  });

  test('test the copyWith function for ModalConfig with modifications', () {
    final animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: const TestVSync(),
    );

    final ModalConfig config = const ModalConfig().copyWith(
      isDismissible: true,
      isBackButtonDismissible: true,
      enableDrag: true,
      showDragHandle: true,
      isScrollControlled: false,
      backgroundColor: Colors.white,
      elevation: 8,
      shape: const RoundedRectangleBorder(),
      clipBehavior: Clip.hardEdge,
      constraints: BoxConstraints.tight(Size.zero),
      barrierColor: Colors.red,
      useRootNavigator: true,
      sizeAnimationDuration: Duration.zero,
      routeSettings: const RouteSettings(),
      transitionAnimationController: animationController,
      anchorPoint: Offset.zero,
      barrierLabel: 'test barrier label',
      mediaQuery: const MediaQueryData(size: Size.infinite),
    );

    expect(config.isDismissible, isTrue);
    expect(config.isBackButtonDismissible, isTrue);
    expect(config.enableDrag, isTrue);
    expect(config.showDragHandle, isTrue);
    expect(config.isScrollControlled, isFalse);
    expect(config.backgroundColor, equals(Colors.white));
    expect(config.elevation, equals(8));
    expect(config.shape, equals(const RoundedRectangleBorder()));
    expect(config.clipBehavior, equals(Clip.hardEdge));
    expect(config.constraints, equals(BoxConstraints.tight(Size.zero)));
    expect(config.barrierColor, equals(Colors.red));
    expect(config.useRootNavigator, isTrue);
    expect(config.sizeAnimationDuration, equals(Duration.zero));
    expect(config.routeSettings, equals(const RouteSettings()));
    expect(config.transitionAnimationController, equals(animationController));
    expect(config.anchorPoint, equals(Offset.zero));
    expect(config.barrierLabel, equals('test barrier label'));
    expect(config.mediaQuery, equals(const MediaQueryData(size: Size.infinite)));
  });

  test('test if multiple instances with the same configuration are identical', () {
    const config1 = ModalConfig(isDismissible: true);
    const config2 = ModalConfig(isDismissible: true);
    expect(config1, equals(config2));
  });

  test('test if multiple instances without the same configuration are not identical', () {
    const config1 = ModalConfig(isDismissible: true);
    const config2 = ModalConfig(isDismissible: false);
    expect(config1, isNot(equals(config2)));
  });
}
