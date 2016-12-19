import 'dart:html';

int _toInt(i) => i is int ? i : int.parse(i);
bool _toBool(i) => i;

class LEvent {
  String title;
  DateTime time;
  String place;
  int price;
  String info;
  ImageElement image;
  bool isOpen;
  LEvent(this.title, this.time, this.place, this.price, this.info, this.image,
      this.isOpen);

  factory LEvent.fromJson(Map<String, dynamic> event) => new LEvent(
      event['title'],
      DateTime.parse(event['time']),
      event['place'],
      _toInt(event['price']),
      event['info'],
      event['image'],
      _toBool(event['is_open']));
}
