import 'package:flutter/material.dart';
import 'package:status_modal/status_modal.dart';

class StatusModal with ChangeNotifier {
  // final ModalConfig config;
  final ModalContent content;

  StatusModal(this.content);

  void update() {}

  void showDialog() {}

  void showBottomSheet() {}
}
