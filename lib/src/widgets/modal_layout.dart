import 'package:flutter/material.dart';

import 'modal_button.dart';
import 'modal_loader.dart';
import 'modal_text.dart';

///
/// The structure of the modal bottom sheet or dialog
/// without any configuration.
///
class ModalLayout extends StatelessWidget {
  final ModalText? title;
  final ModalText? message;
  final ModalLoader? loader;
  final WidgetBuilder? builder;
  final ModalButton? positiveActionButton;
  final ModalButton? negativeActionButton;
  final EdgeInsetsGeometry? titleMargin;
  final EdgeInsetsGeometry? messageMargin;
  final EdgeInsetsGeometry? actionButtonsMargin;
  final EdgeInsetsGeometry? loaderMargin;
  final double? loaderSize;
  final double? actionButtonsSpacing;
  final Axis? actionButtonsAxis;

  const ModalLayout({
    super.key,
    this.title,
    this.message,
    this.builder,
    this.loader,
    this.positiveActionButton,
    this.negativeActionButton,
    this.loaderSize = 0,
    this.actionButtonsSpacing = 0,
    this.actionButtonsAxis = Axis.horizontal,
    this.titleMargin = EdgeInsets.zero,
    this.loaderMargin = EdgeInsets.zero,
    this.messageMargin = EdgeInsets.zero,
    this.actionButtonsMargin = EdgeInsets.zero,
  });

  Widget? get _actionButtons {
    // Create a list of non-null actions button out of the positive and negative buttons.
    List<Widget> buttons = [positiveActionButton, negativeActionButton].whereType<Widget>().toList();

    if (buttons.isEmpty) {
      return null;
    }

    // Insert the gap widget between the action buttons.
    if (buttons.length == 2) {
      // Create a gap between the positive and negative action buttons.
      final Widget buttonSpacer = switch (actionButtonsAxis!) {
        Axis.horizontal => Padding(padding: EdgeInsets.symmetric(horizontal: actionButtonsSpacing!)),
        Axis.vertical => Padding(padding: EdgeInsets.symmetric(vertical: actionButtonsSpacing!)),
      };

      buttons.insert(1, buttonSpacer);
    }

    return switch (actionButtonsAxis!) {
      Axis.horizontal => Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: buttons.map((e) => Expanded(child: e)).toList(),
        ),
      Axis.vertical => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: buttons.toList(),
        ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        // Title text widget.
        if (title != null) Padding(padding: titleMargin!, child: title),

        // Loader widget (circular progress indicator).
        if (loader != null)
          SizedBox.square(
            dimension: loaderSize,
            child: Padding(
              padding: loaderMargin!,
              child: loader!,
            ),
          ),

        // Message text widget.
        if (message != null) Padding(padding: messageMargin!, child: message),

        // Custom widget using a builder.
        if (builder != null) builder!(context),

        // Action buttons row or column widget.
        if (_actionButtons != null)
          Padding(
            padding: actionButtonsMargin!,
            child: _actionButtons,
          ),
      ],
    );
  }
}
