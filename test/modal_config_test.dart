import 'package:flutter_test/flutter_test.dart';
import 'package:status_modal/status_modal.dart';

void main() {
  test('tests the default values for ModalConfig', () {
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
  });
}
