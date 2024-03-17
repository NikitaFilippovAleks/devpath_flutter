import '../models/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Counter extends StatelessWidget {
  const Counter({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: [
          const Text(
            'First challenge',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Consumer<CounterModel>(builder: (context, count, child) {
            return Column( 
              children: [
                Text('Count: ${count.count}'),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: count.increment,
                  child: const Icon(Icons.add),
                )
              ],
            );
          })
        ],
      ),
    );
  }
}
