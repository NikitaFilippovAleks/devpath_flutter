import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:widgets/adaptive_ui/cases/grid_view/product_grid.dart';
import 'package:widgets/adaptive_ui/cases/layout_builder.dart';
import 'package:widgets/adaptive_ui/cases/list_view/product_list.dart';
import 'package:widgets/adaptive_ui/cases/stack.dart';
import 'package:widgets/adaptive_ui/cases/wrap/wraped_offers.dart';
import 'package:widgets/adaptive_ui/challenges/courses_app/course_list.dart';
import 'package:widgets/adaptive_ui/challenges/video_player.dart';
import 'package:widgets/state/basic_provider/index.dart';

import 'adaptive_ui/cases/column_flex_login.dart';
import 'state/quiz_app/index.dart';
import 'state/social_media_profile.dart';
import 'state/todo_challenge/index.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Column'),
        ),
        body: const SafeArea(
          // child: BasicProvider(),
          // child: QuizApp(),
          // child: SocialMediaProfile(),
          child: TodoChallenge(),
        ),
      ),
    );
  }
}

class PreviewApp extends StatelessWidget {
  const PreviewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DevicePreview(
      tools: const [
        DeviceSection(),
      ],
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        useInheritedMediaQuery: true,
        builder: DevicePreview.appBuilder,
        locale: DevicePreview.locale(context),
        title: 'Responsive and adaptive UI in Flutter',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Column'),
          ),
          body: SafeArea(
            child: CourseList(),
          ),
        ),
      ),
    );
  }
}
