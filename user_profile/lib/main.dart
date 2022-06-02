import 'package:flutter/material.dart';
import 'package:user_profile/card_widget.dart';
import 'package:user_profile/card_widget_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Profile(),
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: CardWidgetProvider().items.length,
      itemBuilder: (context, index) {
        return CardWidget(
          id: CardWidgetProvider().items[index].id,
          name: CardWidgetProvider().items[index].name,
          image: CardWidgetProvider().items[index].image,
          review: CardWidgetProvider().items[index].review,
          likes: CardWidgetProvider().items[index].likes,
          comments: CardWidgetProvider().items[index].comments,
          time: CardWidgetProvider().items[index].time,
        );
      },
    );
  }
}
