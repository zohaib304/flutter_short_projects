import 'package:user_profile/card_widget_model.dart';

class CardWidgetProvider {
  final List<CardWidgetModel> _items = [
    CardWidgetModel(
      id: 1,
      name: 'Jhon Doe',
      review:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint',
      image: 'assets/barber.jpg',
      likes: 24,
      comments: 10,
      time: '1 hour ago',
    ),
    CardWidgetModel(
      id: 2,
      name: 'Black Moo',
      review:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint',
      image: 'assets/barber.jpg',
      likes: 15,
      comments: 13,
      time: '2 hour ago', 
    ),
    CardWidgetModel(
      id: 3,
      name: 'Raz Miko',
      review:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint',
      image: 'assets/barber.jpg',
      likes: 32,
      comments: 17,
      time: '3 hour ago',
    ),
    CardWidgetModel(
      id: 4,
      name: 'Jhon Doe',
      review:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia, molestiae quas vel sint',
      image: 'assets/barber.jpg',
      likes: 24,
      comments: 10,
      time: '1 hour ago',
    ),
    CardWidgetModel(
      id: 5,
      name: 'Sara Doe',
      review:
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,molestiae quas vel sint',
      image: 'assets/barber.jpg',
      likes: 25,
      comments: 3,
      time: '4 hour ago',
    ),
  ];

  List<CardWidgetModel> get items => _items;
}
