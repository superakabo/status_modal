import 'dart:math';

import 'package:flutter/material.dart';

import 'modal_button.dart';
import 'modal_layout.dart';
import 'modal_text.dart';

class ModalContent extends StatelessWidget {
  final ModalText? title;
  final ModalText? message;
  final ModalButton? actionButton;
  final ModalButton? cancelButton;
  final Axis? actionButtonsAxis;
  final double? actionButtonsSpacing;
  final WidgetBuilder? builder;

  const ModalContent({
    super.key,
    this.title,
    this.message,
    this.builder,
    this.actionButton,
    this.cancelButton,
    this.actionButtonsAxis,
    this.actionButtonsSpacing,
  });

  factory ModalContent.info({
    ModalText? title,
    ModalText? message,
    WidgetBuilder? builder,
    ModalButton? actionButton,
    ModalButton? cancelButton,
    Axis? actionButtonsAxis = Axis.horizontal,
    double? actionButtonsSpacing = 12,
  }) {
    return ModalContent(
      title: title,
      message: message,
      builder: builder,
      actionButton: actionButton,
      cancelButton: cancelButton,
      actionButtonsAxis: actionButtonsAxis,
      actionButtonsSpacing: actionButtonsSpacing,
    );
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets viewPadding = MediaQuery.paddingOf(context);

    return ModalLayout(
      title: title,
      message: message,
      builder: builder,
      //
      positiveActionButton: actionButton,
      negativeActionButton: cancelButton,
      //
      actionButtonsAxis: actionButtonsAxis,
      actionButtonsSpacing: actionButtonsSpacing,
      //
      titleMargin: (title == null) ? null : const EdgeInsets.only(top: 16, left: 16, right: 16),
      messageMargin: (message == null) ? null : const EdgeInsets.only(top: 16, left: 24, right: 24),
      actionButtonsMargin: EdgeInsets.only(top: 32, left: 24, right: 24, bottom: max(16, viewPadding.bottom)),
    );
  }
}
