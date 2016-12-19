import 'dart:html';

int _toInt(i) => i is int ? i : int.parse(i);
bool _toBool(i) => i is bool ? i : i.toLowerCase() == 'true';
ImageElement _toImage(i) {
  try {
    return ImageElement(i, Null, Null);
  } catch (e) {
    print(e);
    return Null;
  }
}

DateTime _toTime(i) => DateTime.parse(i);

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
      _toTime(event['time']),
      event['place'],
      _toInt(event['price']),
      event['info'],
      _toImage(event['image']),
      _toBool(event['is_open']));
}
