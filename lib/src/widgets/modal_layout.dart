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

  @override
  Widget build(BuildContext context) {
    // Create a gap between the positive and negative action buttons.
    final Widget actionButtonsSpacer = switch (actionButtonsAxis!) {
      Axis.horizontal => Padding(padding: EdgeInsets.symmetric(horizontal: actionButtonsSpacing!)),
      Axis.vertical => Padding(padding: EdgeInsets.symmetric(vertical: actionButtonsSpacing!)),
    };

    // Create a list of actions button out of the positive and negative buttons.
    final List<Widget> actionButtons = switch (actionButtonsAxis!) {
      Axis.horizontal => [
          if (positiveActionButton != null) Expanded(child: positiveActionButton!),
          if (negativeActionButton != null) Expanded(child: negativeActionButton!),
        ],
      Axis.vertical => [
          if (positiveActionButton != null) positiveActionButton!,
          if (negativeActionButton != null) negativeActionButton!,
        ],
    };

    // TODO: Remove this line and use the new spacing property
    // to separate the actions buttons when it is made available
    // in the stable release.
    //
    // Insert the gap widget between the action buttons.
    if (actionButtons.length == 2) {
      actionButtons.insert(1, actionButtonsSpacer);
    }

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
        if (actionButtons.isNotEmpty) ...[
          Padding(
            padding: actionButtonsMargin!,
            child: switch (actionButtonsAxis!) {
              Axis.vertical => Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: actionButtons,
                ),
              Axis.horizontal => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: actionButtons,
                ),
            },
          ),
        ],
      ],
    );
  }
}
