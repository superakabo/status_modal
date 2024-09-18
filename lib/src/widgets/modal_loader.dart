import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

///
/// The [ModalLoader] is a wrapper over [CircularProgressIndicator].
///
class ModalLoader extends StatelessWidget {
  /// If non-null, the value of this progress indicator.
  ///
  /// A value of 0.0 means no progress and 1.0 means that progress is complete.
  /// The value will be clamped to be in the range 0.0-1.0.
  ///
  /// If null, this progress indicator is indeterminate, which means the
  /// indicator displays a predetermined animation that does not indicate how
  /// much actual progress is being made.
  final double? value;

  /// The progress indicator's background color.
  ///
  /// It is up to the subclass to implement this in whatever way makes sense
  /// for the given use case. See the subclass documentation for details.
  final Color? backgroundColor;

  /// {@template flutter.progress_indicator.ProgressIndicator.color}
  /// The progress indicator's color.
  ///
  /// This is only used if [ProgressIndicator.valueColor] is null.
  /// If [ProgressIndicator.color] is also null, then the ambient
  /// [ProgressIndicatorThemeData.color] will be used. If that
  /// is null then the current theme's [ColorScheme.primary] will
  /// be used by default.
  /// {@endtemplate}
  final Color? color;

  /// The progress indicator's color as an animated value.
  ///
  /// If null, the progress indicator is rendered with [color]. If that is null,
  /// then it will use the ambient [ProgressIndicatorThemeData.color]. If that
  /// is also null then it defaults to the current theme's [ColorScheme.primary].
  final Animation<Color?>? valueColor;

  /// The width of the line used to draw the circle.
  final double strokeWidth;

  /// The relative position of the stroke on a [CircularProgressIndicator].
  ///
  /// Values typically range from -1.0 ([strokeAlignInside], inside stroke)
  /// to 1.0 ([strokeAlignOutside], outside stroke),
  /// without any bound constraints (e.g., a value of -2.0 is not typical, but allowed).
  /// A value of 0 ([strokeAlignCenter], default) will center the border
  /// on the edge of the widget.
  final double strokeAlign;

  /// {@template flutter.progress_indicator.ProgressIndicator.semanticsLabel}
  /// The [SemanticsProperties.label] for this progress indicator.
  ///
  /// This value indicates the purpose of the progress bar, and will be
  /// read out by screen readers to indicate the purpose of this progress
  /// indicator.
  /// {@endtemplate}
  final String? semanticsLabel;

  /// {@template flutter.progress_indicator.ProgressIndicator.semanticsValue}
  /// The [SemanticsProperties.value] for this progress indicator.
  ///
  /// This will be used in conjunction with the [semanticsLabel] by
  /// screen reading software to identify the widget, and is primarily
  /// intended for use with determinate progress indicators to announce
  /// how far along they are.
  ///
  /// For determinate progress indicators, this will be defaulted to
  /// [ProgressIndicator.value] expressed as a percentage, i.e. `0.1` will
  /// become '10%'.
  /// {@endtemplate}
  final String? semanticsValue;

  /// The progress indicator's line ending.
  ///
  /// This determines the shape of the stroke ends of the progress indicator.
  /// By default, [strokeCap] is null.
  /// When [value] is null (indeterminate), the stroke ends are set to
  /// [StrokeCap.square]. When [value] is not null, the stroke
  /// ends are set to [StrokeCap.butt].
  ///
  /// Setting [strokeCap] to [StrokeCap.round] will result in a rounded end.
  /// Setting [strokeCap] to [StrokeCap.butt] with [value] == null will result
  /// in a slightly different indeterminate animation; the indicator completely
  /// disappears and reappears on its minimum value.
  /// Setting [strokeCap] to [StrokeCap.square] with [value] != null will
  /// result in a different display of [value]. The indicator will start
  /// drawing from slightly less than the start, and end slightly after
  /// the end. This will produce an alternative result, as the
  /// default behavior, for example, that a [value] of 0.5 starts at 90 degrees
  /// and ends at 270 degrees. With [StrokeCap.square], it could start 85
  /// degrees and end at 275 degrees.
  final StrokeCap? strokeCap;

  final CircularProgressIndicator _progressIndicator;

  ModalLoader({
    super.key,
    this.value,
    this.color,
    this.strokeCap,
    this.valueColor,
    this.strokeWidth = 4.0,
    this.strokeAlign = 0.0,
    this.semanticsLabel,
    this.semanticsValue,
    this.backgroundColor,
  }) : _progressIndicator = CircularProgressIndicator(
          value: value,
          color: color,
          strokeCap: strokeCap,
          valueColor: valueColor,
          strokeAlign: strokeAlign,
          strokeWidth: strokeWidth,
          semanticsLabel: semanticsLabel,
          semanticsValue: semanticsValue,
          backgroundColor: backgroundColor,
        );

  @override
  Widget build(BuildContext context) {
    return _progressIndicator;
  }

  /// Create a copy of the [ModalLoader].
  ModalLoader copyWith({
    double? value,
    Color? color,
    StrokeCap? strokeCap,
    Animation<Color?>? valueColor,
    double? strokeAlign,
    double? strokeWidth,
    String? semanticsLabel,
    String? semanticsValue,
    Color? backgroundColor,
  }) {
    return ModalLoader(
      value: value ?? this.value,
      color: color ?? this.color,
      strokeCap: strokeCap ?? this.strokeCap,
      valueColor: valueColor ?? this.valueColor,
      strokeAlign: strokeAlign ?? this.strokeAlign,
      strokeWidth: strokeWidth ?? this.strokeWidth,
      semanticsLabel: semanticsLabel ?? this.semanticsLabel,
      semanticsValue: semanticsValue ?? this.semanticsValue,
      backgroundColor: backgroundColor ?? this.backgroundColor,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    return _progressIndicator.debugFillProperties(properties);
  }
}
