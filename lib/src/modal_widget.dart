import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:status_modal/status_modal.dart';

import 'widgets/title_widget.dart';

class ModalWidget extends StatelessWidget with Diagnosticable {
  final TitleWidget? title;

  const ModalWidget({
    super.key,
    this.title,
  });

  // final String? title;
  // final String? message;
  // final Widget? child;
  // final String? positiveButtonText;
  // final String? negativeButtonText;
  // final VoidCallback? onPositiveButtonPressed;
  // final VoidCallback? onNegativeButtonPressed;
  // final ModalConfig config;

  // const ModalWidget({
  //   super.key,
  //   this.title,
  //   this.message,
  //   this.child,
  //   this.config = const ModalConfig(),
  //   this.positiveButtonText,
  //   this.negativeButtonText,
  //   this.onPositiveButtonPressed,
  //   this.onNegativeButtonPressed,
  // });

  // ModalWidget copyWith({
  //   String? title,
  //   String? message,
  //   Widget? child,
  //   String? positiveButtonText,
  //   String? negativeButtonText,
  //   VoidCallback? onPositiveButtonPressed,
  //   VoidCallback? onNegativeButtonPressed,
  // }) {
  //   return ModalWidget(
  //     title: title ?? this.title,
  //     message: message ?? this.message,
  //     positiveButtonText: positiveButtonText ?? this.positiveButtonText,
  //     negativeButtonText: negativeButtonText ?? this.negativeButtonText,
  //     onPositiveButtonPressed: onPositiveButtonPressed ?? this.onPositiveButtonPressed,
  //     onNegativeButtonPressed: onNegativeButtonPressed ?? this.onNegativeButtonPressed,
  //     child: child ?? this.child,
  //   );
  // }

  // factory ModalWidget.info() {
  //   return const ModalWidget();
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
    // final ThemeData theme = Theme.of(context);

    // return MediaQuery(
    //   data: config.mediaQuery,
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       if ((title ?? '').isNotEmpty) ...[
    //         Padding(
    //           padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
    //           child: Text(
    //             title!,
    //             textAlign: TextAlign.center,
    //             style: theme.textTheme.titleMedium?.copyWith(
    //               color: (data.status == Status.error) ? theme.colorScheme.error : null,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ],
    //     ],
    //   ),
    // );
  }
}



// class ModalContent with Diagnosticable {
//   final String? title;
//   final String? message;
//   final Widget? child;
//   final String? positiveButtonText;
//   final String? negativeButtonText;
//   final VoidCallback? onPositiveButtonPressed;
//   final VoidCallback? onNegativeButtonPressed;

//   const ModalContent({
//     this.title,
//     this.message,
//     this.child,
//     this.positiveButtonText,
//     this.negativeButtonText,
//     this.onPositiveButtonPressed,
//     this.onNegativeButtonPressed,
//   });

//   ModalContent copyWith({
//     String? title,
//     String? message,
//     Widget? child,
//     String? positiveButtonText,
//     String? negativeButtonText,
//     VoidCallback? onPositiveButtonPressed,
//     VoidCallback? onNegativeButtonPressed,
//   }) {
//     return ModalContent(
//       title: title ?? this.title,
//       message: message ?? this.message,
//       child: child ?? this.child,
//       positiveButtonText: positiveButtonText ?? this.positiveButtonText,
//       negativeButtonText: negativeButtonText ?? this.negativeButtonText,
//       onPositiveButtonPressed: onPositiveButtonPressed ?? this.onPositiveButtonPressed,
//       onNegativeButtonPressed: onNegativeButtonPressed ?? this.onNegativeButtonPressed,
//     );
//   }

//   @override
//   int get hashCode {
//     return Object.hashAll([
//       title,
//       message,
//       child,
//       positiveButtonText,
//       negativeButtonText,
//       onPositiveButtonPressed,
//       onNegativeButtonPressed,
//     ]);
//   }

//   @override
//   bool operator ==(Object other) {
//     return identical(this, other) ||
//         other is ModalContent &&
//             runtimeType == other.runtimeType &&
//             title == other.title &&
//             message == other.message &&
//             child == other.child &&
//             positiveButtonText == other.positiveButtonText &&
//             negativeButtonText == other.negativeButtonText &&
//             onPositiveButtonPressed == other.onPositiveButtonPressed;
//   }
// }
