import 'dart:math';

import 'package:flutter/material.dart';

import 'modal_button.dart';
import 'modal_layout.dart';
import 'modal_loader.dart';
import 'modal_text.dart';

class ModalContent extends StatelessWidget {
  final ModalText? title;
  final ModalText? message;
  final ModalButton? actionButton;
  final ModalButton? cancelButton;
  final Axis? actionButtonsAxis;
  final double? actionButtonsSpacing;
  final WidgetBuilder? builder;
  final ModalLoader? loader;
  final double? loaderSize;
  final EdgeInsetsGeometry? titleMargin;
  final EdgeInsetsGeometry? messageMargin;
  final EdgeInsetsGeometry? loaderMargin;
  final EdgeInsetsGeometry? actionButtonsMargin;

  const ModalContent({
    super.key,
    this.title,
    this.message,
    this.builder,
    this.loader,
    this.actionButton,
    this.cancelButton,
    this.actionButtonsAxis,
    this.actionButtonsSpacing,
    this.loaderSize,
    this.titleMargin,
    this.messageMargin,
    this.loaderMargin,
    this.actionButtonsMargin,
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

  factory ModalContent.loading({
    ModalText? title,
    ModalText? message,
    ModalLoader? loader,
    double? loaderSize,
  }) {
    return ModalContent(
      title: title,
      message: message,
      loader: loader,
      loaderSize: loaderSize,
    );
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets viewPadding = MediaQuery.paddingOf(context);

    return ModalLayout(
      title: title,
      titleMargin: titleMargin ?? const EdgeInsets.only(top: 16, left: 16, right: 16),
      //
      message: message,
      messageMargin: messageMargin ?? const EdgeInsets.only(top: 16, left: 24, right: 24),
      //
      builder: builder,
      //
      loader: loader,
      loaderSize: loaderSize,
      loaderMargin: loaderMargin ?? const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 20),
      //
      positiveActionButton: actionButton,
      negativeActionButton: cancelButton,
      //
      actionButtonsAxis: actionButtonsAxis,
      actionButtonsSpacing: actionButtonsSpacing,
      actionButtonsMargin:
          actionButtonsMargin ?? EdgeInsets.only(top: 32, left: 24, right: 24, bottom: max(16, viewPadding.bottom)),
    );
  }
}
