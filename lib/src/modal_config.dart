import 'package:flutter/foundation.dart';

import 'models/bottom_sheet_config.dart';
import 'models/dialog_config.dart';

class ModalConfig with Diagnosticable {
  final BottomSheetConfig? bottomSheetConfig;
  final DialogConfig? dialogConfig;

  const ModalConfig._({
    this.bottomSheetConfig,
    this.dialogConfig,
  });

  factory ModalConfig.bottomSheet(BottomSheetConfig config) {
    return ModalConfig._(bottomSheetConfig: config);
  }

  factory ModalConfig.dialog(DialogConfig config) {
    return ModalConfig._(dialogConfig: config);
  }

  ModalConfig copyWith({
    BottomSheetConfig? bottomSheetConfig,
    DialogConfig? dialogConfig,
  }) {
    return ModalConfig._(
      bottomSheetConfig: bottomSheetConfig ?? this.bottomSheetConfig,
      dialogConfig: dialogConfig ?? this.dialogConfig,
    );
  }

  @override
  int get hashCode {
    return Object.hashAll([
      bottomSheetConfig,
      dialogConfig,
    ]);
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ModalConfig &&
            runtimeType == other.runtimeType &&
            bottomSheetConfig == other.bottomSheetConfig &&
            dialogConfig == other.dialogConfig;
  }
}
