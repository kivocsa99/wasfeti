import 'package:freezed_annotation/freezed_annotation.dart';
part 'prescriptionmodel.freezed.dart';
part 'prescriptionmodel.g.dart';

@freezed
class PrescriptionModel with _$PrescriptionModel {
  const factory PrescriptionModel({
    String? id,
    String? name,
    List<String>? dose,
  }) = _PrescriptionModel;
  factory PrescriptionModel.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionModelFromJson(json);
}
