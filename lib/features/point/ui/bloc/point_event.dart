part of 'point_bloc.dart';

@freezed
class PointEvent with _$PointEvent {
  const factory PointEvent.setHallIndex(int index) = _SetHallIndex;

  const factory PointEvent.setPointEntity(PointEntity point) = _SetPointEntity;
}
