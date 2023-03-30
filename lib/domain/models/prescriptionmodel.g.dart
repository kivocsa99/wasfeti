// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prescriptionmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrescriptionModel _$$_PrescriptionModelFromJson(Map<String, dynamic> json) =>
    _$_PrescriptionModel(
      id: json['id'] as String?,
      name: json['name'] as String?,
      dose: (json['dose'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_PrescriptionModelToJson(
        _$_PrescriptionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'dose': instance.dose,
    };
