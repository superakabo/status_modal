import 'package:flutter/material.dart';
import 'package:status_modal/status_modal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late final info = ModalContent.info(
    title: ModalText.title(
      'Processing Request',
      color: Colors.red,
    ),
    message: ModalText.body('Please wait...'),
    actionButton: ModalButton.primary(
      text: 'OK',
      onPressed: () {},
    ),
    cancelButton: ModalButton.secondary(
      text: 'Cancel',
      onPressed: () {},
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: info),
    );
  }
}
