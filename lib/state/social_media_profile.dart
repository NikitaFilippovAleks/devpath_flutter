import 'dart:async';

import 'package:flutter/material.dart';

Iterable<String> fetchStatuses(int number) sync* {
  for (int i = 0; i < number; i++) {
    yield 'Status $i';
  }
}

class SocialMediaProfile extends StatefulWidget {
  const SocialMediaProfile({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<SocialMediaProfile> {
  late List<String> statuses;

  @override
  void initState() {
    super.initState();
    statuses = fetchStatuses(13).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 20,),
          Container(
            width: 150,
            height: 150,
            child: CircleAvatar(
              foregroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/002/098/203/small_2x/silver-tabby-cat-sitting-on-green-background-free-photo.jpg'),
            )
          ),
          SizedBox(height: 20,),
          AnimatedStatuses(statuses: statuses),
        ],
      ),
    );
  }
}

class AnimatedStatuses extends StatefulWidget {
  final List<String> statuses;

  const AnimatedStatuses({Key? key, required this.statuses}) : super(key: key);

  @override
  _AnimatedStatusesState createState() => _AnimatedStatusesState();
}

class _AnimatedStatusesState extends State<AnimatedStatuses> {
  late List<String> animatedStatuses;
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    animatedStatuses = [];
    currentIndex = 0;
    animateStatuses();
  }

  void animateStatuses() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (currentIndex < widget.statuses.length) {
        setState(() {
          animatedStatuses.add(widget.statuses[currentIndex]);
          currentIndex++;
        });
      } else {
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: animatedStatuses.map((title) {
        return AnimatedStatusItem(title: title);
      }).toList(),
    );
  }
}

class AnimatedStatusItem extends StatefulWidget {
  final String title;

  const AnimatedStatusItem({Key? key, required this.title}) : super(key: key);

  @override
  _AnimatedStatusItemState createState() => _AnimatedStatusItemState();
}

class _AnimatedStatusItemState extends State<AnimatedStatusItem> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 500), vsync: this);
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacityAnimation,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
        ),
        child: Text(
          widget.title,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16, color: Colors.white),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
