import 'package:myapp/domain/entities/event.dart';

class EventModel extends Event {
  EventModel(
      {id,key,experimentIds})
      : super(id,key,experimentIds
           );
  factory EventModel.fromJson(Map<String, dynamic> json) {
    print(json['key']);
    return EventModel(
      id: json['id'] ?? '',
      key: json['key'] ?? '',
      experimentIds: json["experimentIds"] == null ? null : List<String>.from(json["experimentIds"].map((x) => x)),
    );
  }

}
