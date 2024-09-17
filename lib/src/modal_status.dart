enum ModalStatus {
  none,

  /// Present a modal with a title, circular progress indicator and message.
  loading,

  /// Present a modal with a title, message and action buttons.
  info,

  /// Present a modal with a title, message and action buttons.
  /// The color of the title is red to denote error.
  error;
}
