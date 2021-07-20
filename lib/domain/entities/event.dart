import 'package:equatable/equatable.dart';

abstract class Event extends Equatable {
  final String id;
  final String key;
  final List<String> experimentIds;

  Event(this.id, this.key, this.experimentIds);

  @override
  List<Object> get props => [];
}
