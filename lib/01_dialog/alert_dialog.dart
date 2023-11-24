import 'package:flutter/material.dart';

class AlertDialogScreen extends StatefulWidget {
  const AlertDialogScreen({super.key});

  @override
  State<AlertDialogScreen> createState() => _AlertDialogScreenState();
}

class _AlertDialogScreenState extends State<AlertDialogScreen> {
  TextEditingController controller = TextEditingController();
  List box = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: TextField(
          controller: controller,
          decoration: const InputDecoration(border: OutlineInputBorder()),
        ),
      ),
      body: ListView.builder(
        itemCount: box.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Delete'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('No')),
                        TextButton(
                            onPressed: () {
                              setState(() {
                                box.removeAt(index);
                                Navigator.pop(context);
                              });
                            },
                            child: Text('Yes')),
                      ],
                    );
                  });
            },
            title: Text(box[index]),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          box.add(controller.text);
          controller.text = '';
        });
        print(box);
      }),
    );
  }
}
