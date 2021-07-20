import 'package:equatable/equatable.dart';
import 'package:myapp/data/models/data_sample_model.dart';

abstract class GetSampleDataState extends Equatable {
  const GetSampleDataState();
  @override
  List<Object> get props => [];
}

class GetSampleDataInitial extends GetSampleDataState {}

class GetSampleDataLoading extends GetSampleDataState {}

class ClearDataSuccess extends GetSampleDataState {}

class GetSampleDataSuccess extends GetSampleDataState {
  final DataSampleModel sample;
  GetSampleDataSuccess(this.sample);
}

class GetSampleDataError extends GetSampleDataState {
  final errorMessage;
  GetSampleDataError(this.errorMessage);
}
