import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Dialog widget'),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Dialog'),
                      icon: Icon(Icons.warning_amber, size: 40),
                      actions: [
                        TextButton(onPressed: () {}, child: Text('No')),
                        TextButton(onPressed: () {}, child: Text('Yes')),
                      ],
                    );
                  });
            },
            child: const Text('Open Dialog')),
      ),
    );
  }
}
