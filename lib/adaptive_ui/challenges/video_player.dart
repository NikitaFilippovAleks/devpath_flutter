import 'package:flutter/material.dart';

class VideoPlayer extends StatelessWidget {
  const VideoPlayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final video = ConstrainedBox(
        constraints: BoxConstraints(maxHeight: constraints.maxHeight),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            color: Colors.black,
            child: const Center(
              child: Icon(
                Icons.play_circle,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );

      // Calculate the maximum height of the video
      final maxVideoHeight = constraints.maxWidth / (16 / 9);

      // Calculate the maximum height available for the description
      final remainingAvailableHeight = constraints.maxHeight - maxVideoHeight;

      // Assume 100 pixels is enough for the description
      if (remainingAvailableHeight < 100) {
        return Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: video,
            ),
            Positioned(
              right: 8,
              top: 8,
              child: IconButton(
                color: Colors.green,
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text('Video info'),
                        content: VideoDescription(),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.info),
              ),
            )
          ],
        );
      } else {
        return Column(
          children: [
            video,
            const VideoDescription(),
          ],
        );
      }
    });
  }
}


class VideoDescription extends StatelessWidget {
  const VideoDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Text(
            'Video Title',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 24),
          ),
          Text(
            'Video description',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            'Likes: 34',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
