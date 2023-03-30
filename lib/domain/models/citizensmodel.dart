import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wasfeti/domain/models/prescriptionmodel.dart';
part 'citizensmodel.freezed.dart';
part 'citizensmodel.g.dart';

@freezed
class CiztizenModel with _$CiztizenModel {
  const factory CiztizenModel({
    String? id,
    String? name,
    List<PrescriptionModel>?prescriptions,
  }) = _CiztizenModel;
  factory CiztizenModel.fromJson(Map<String, dynamic> json) =>
      _$CiztizenModelFromJson(json);
}
