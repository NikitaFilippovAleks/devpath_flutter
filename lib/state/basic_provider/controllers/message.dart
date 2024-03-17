import 'form.dart';
import '../models/message.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Message extends StatelessWidget {
  const Message({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          const Text(
            'Second challenge',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          FractionallySizedBox(
            widthFactor: 0.8,
            child: Column(
              children: [
                MessageForm(),
                Consumer<MessageModel>(builder: (context, message, child) {
                  return Column(children: [
                    Text(
                      'Message is: ${message.message}'
                    ),
                    const SizedBox(height: 10),
                    FloatingActionButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              message.isStartWithS() ? 'Word is S' : 'Wrong word'
                            )
                          )
                        );
                      },
                      child: const Icon(Icons.check_circle),
                    )
                  ],);
                })
              ],
            )
          )
        ]
      )
    );
  }
}
