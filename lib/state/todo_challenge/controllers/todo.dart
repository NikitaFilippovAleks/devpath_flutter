import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Task {
  final String title;
  final String details;
  final DateTime createdAt;

  Task({
    required this.title,
    required this.details,
    required this.createdAt
  });
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController titleController = TextEditingController();
  TextEditingController detailsController = TextEditingController();
  List<Task> tasks = [];

  @override
  void dispose() {
    titleController.dispose();
    detailsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextField(
          controller: titleController,
          decoration: InputDecoration(
            hintText: 'Title'
          ),
        ),
        SizedBox(height: 10,),
        TextField(
          controller: detailsController,
          decoration: InputDecoration(
            hintText: 'Details'
          ),
        ),
        SizedBox(height: 10,),
        ElevatedButton(
          onPressed: () {
            if (titleController.text.isNotEmpty && detailsController.text.isNotEmpty) {
              setState(() {
                tasks.add(Task(
                  title: titleController.text,
                  details: detailsController.text,
                  createdAt: DateTime.now()
                ));
              });
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Fill fields'))
              );
            }
          },
          child: Text('Add task')
        ),
        Column(
          children: tasks.map((task) {
            return Card(
              child: ListTile(
                title: Text(task.title),
                subtitle: Column(
                  children: [
                    Text(task.details),
                    Text(DateFormat('dd-MM-y hh:mm:ss').format(task.createdAt))
                  ],
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
                trailing: IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      tasks.remove(task);
                    });
                  },
                )
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
