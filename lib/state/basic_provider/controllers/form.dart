import '../models/message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MessageForm extends StatefulWidget {
  const MessageForm({super.key});

  @override
  State<MessageForm> createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    final messageProvider = Provider.of<MessageModel>(context, listen: false);

    super.initState();
    myController = TextEditingController(text: messageProvider.message);
  }

  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageModel>(context, listen: false);

    return TextField(
      controller: myController,
      onChanged: messageProvider.change,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Enter a search term',
      ),
    );
  }
}
