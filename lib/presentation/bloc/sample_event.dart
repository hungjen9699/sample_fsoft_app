import 'package:equatable/equatable.dart';

abstract class GetSampleDataEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetSampleData extends GetSampleDataEvent {}

class ClearData extends GetSampleDataEvent {}
